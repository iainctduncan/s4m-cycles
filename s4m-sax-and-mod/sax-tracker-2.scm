(post "sax-tracker-mod-2.scm")

; version using dbs input from 0 up instead of rms

; unfinished business:
; - the repeated note filtering is over eager, I think it doesn't allow any repeated notes

; how many ksmps after an onset to wait before beginning to write to freq buf
(define onset-wait 2)  ; was 20
; number of samples after the wait to collect and take median of
(define frq-buf-size 5)
(define dbs-buf-size 5)

; dbs-delta between ksmps to call an onset
(define delta-thresh 0.1) ; 0.1 seems good 
; min dbs for considering onset a note
(define dbs-thresh 2)  ; 
; min number of ksmps between detected onsets (~ 1.3 ms per)
(define debounce-ksmps 0) ;

; scaling thresholds for converting dbs to amplitude
(define dbs-ceiling 40)  ; dbs val that will produce amp 1
(define dbs-ceiling 50)  ; dbs val that will produce amp 1
;(define dbs-floor 1)   ; dbs val for amp 0  
(define dbs-floor 1)   ; dbs val for amp 0  

;****************************************************************************************************
(define debug 0)
(define (logger . args)
  (if (= debug 1) 
    (apply post args))
  '())

; abs value counting ksmps
; TODO this will need to be smarter later to not run over
(define ksmp 0)
(define last-dbs 0.0)
(define cps 0.0)
(define last-note-num 0)
(define last-note-ksmp 0)
; number of ksmps that must have passed for a repeated note to be played
(define repeat-min-ksmp 500) 

; just for saving last buf to inspect
(define buf #f)

; debounce logic is separate from frq buffer logic so
; that debounce time can be different from size of frq-buffer
(define debouncing #f)  ; can be #f or int

;****************************************************************************************************
; frq and dbs buf plumbing
; count kpasses after an onset, #f if not IN an onset
(define onset-ksmp #f)
(define frq-buf-median-i (floor (/ frq-buf-size 2)))
(define frq-buf (make-vector frq-buf-size 10))
(define frq-buf-i 0)

(define (frq-buf-add val)
  (set! (frq-buf frq-buf-i) val)
  (set! frq-buf-i (if (= frq-buf-i (- frq-buf-size 1)) 0 (+ 1 frq-buf-i)))
  '())

(define (get-frq-buf-median)
  (let* ((buf-copy (copy frq-buf))
         (buf-sorted (sort! buf-copy <)))
    (buf-sorted frq-buf-median-i)))      

(define dbs-buf-median-i (floor (/ dbs-buf-size 2)))
(define dbs-buf (make-vector dbs-buf-size 0.001))
(define dbs-buf-i 0)

(define (dbs-buf-add val)
  (set! (dbs-buf dbs-buf-i) val)
  (set! dbs-buf-i (if (= dbs-buf-i (- dbs-buf-size 1)) 0 (+ 1 dbs-buf-i)))
  '())

(define (get-dbs-buf-mean)
  (let* ((sum 0))
    (dotimes (i dbs-buf-size) 
      (set! sum (+ sum (dbs-buf i))))
    (/ sum dbs-buf-size)))  


(define (cps->midi cps)
  ; log takes second optional arg for base ; 220 is the cps for A 57
  (if cps (+ (* 12 (log (/ cps 220) 2)) 57) 0))

(define (dbs->amp dbs-in)
  (let* ((dbs-max dbs-ceiling)  ; get from global configs
         (dbs-min dbs-floor)    ; should be 0.05
         ; clamp the incoming signal to our determined range
         (dbs-in (if (< dbs-in dbs-min) dbs-min dbs-in))
         (dbs-in (if (> dbs-in dbs-max) dbs-max dbs-in))
         (dbs-range (- dbs-max dbs-min))
         (dbs-norm (/ (- dbs-in dbs-min) dbs-range)))
    dbs-norm))


(define (peek)
  (post "**** Tracker state *****")
  (post "  - delta-thresh:" delta-thresh)
  (post "  - dbs-thresh:" dbs-thresh)
  (post "  - debouncing:" debouncing)
  (post "  - onset-ksmp:" onset-ksmp)
  '())

; function called on every ksmp with a frq value
; this just sets the frq value, leaves processing to dbs-in
; runs before dbs-in, and writes to the frq-buf if the onset flags indicate it's time
(define (frq-in cps-arg)
  ; ignore incoming freqs that are below 20 (produced from quiet noise) 
  (if (> cps-arg 20) (begin 
    ;(logger "(frq-in) ksmp: " ksmp "cps:" cps-arg)
    (set! ksmp (+ 1 ksmp))
    (set! cps cps-arg)
    ; if we are in an onset, we write to the frq-buf for frq-buf-size passes
    ;(if onset-ksmp (logger "  onset-ksmp:" onset-ksmp))
    (cond
      ; case for writing, in onset, have waited long enough, still in buf size
      ((and onset-ksmp                               
        (>= onset-ksmp onset-wait)                    
        (<  onset-ksmp (+ onset-wait frq-buf-size)))  
          (frq-buf-add cps-arg)
          ;(logger "  - adding to frq-buf, onset-ksmp:" onset-ksmp "frq-buf now:" frq-buf)
          ;(logger "  - frq buf midi" (frq-buf-midi frq-buf))
          (set! onset-ksmp (+ 1 onset-ksmp))
        )
      ; case done writing, set flag and call note fun
      ((and onset-ksmp (= (- onset-ksmp onset-wait) frq-buf-size))
        (note-detected)
        (set! onset-ksmp #f))
      ; else if in onset but waiting, we just count up
      (onset-ksmp
        (set! onset-ksmp (+ 1 onset-ksmp))))
   )) ; end if for nonsense input
  '())



; function called on every ksmp with an dbs value
(define (dbs-in dbs)
  ;(logger "  - (dbs-in)" dbs)
  ;(if onset-ksmp 
  ;  (logger "onset-ksmp" onset-ksmp))

  ; debouncing count sets the min number of ksmps between detected onsets
  (if debouncing (begin
      ;(logger  "    - debouncing:" debouncing)
      (set! debouncing (+ 1 debouncing))))
  (if (and debouncing (> debouncing debounce-ksmps)) (begin
      ;(post  "    - ending debounce") 
      (set! debouncing #f)))

  ; writing of dbs to dbs buffer, based on flags set in the frq function
  ; TODO later, would make more sense for flags to be all set here so all lifecycle
  ; handling happens in the same function
  (if (and onset-ksmp 
        (>= onset-ksmp onset-wait)                    
        (<  onset-ksmp (+ onset-wait dbs-buf-size)))  
    (begin
      (dbs-buf-add dbs)
      (logger "  - adding to dbs-buf, onset-ksmp:" onset-ksmp "dbs-buf now:" dbs-buf)))

  ; onset detection
  (let ((dbs-delta (- dbs last-dbs)))
    ;(logger "  - dbs-delta: " dbs-delta)
    ; if amp and delta high enough and we are not in an onset debounce, 
    ; we start a new onset by calling trigger
    (if (and 
          (not debouncing)
          (>= dbs dbs-thresh) 
          (>= dbs-delta delta-thresh))
      (new-onset dbs-delta dbs last-dbs))
    (set! last-dbs dbs)
    '()))

; trigger is limited to running once per debounce period, in dbs-in
; the call to trigger-onset starts the frq ring buff writes and onset count up
; by setting those to 0 
(define (new-onset delta dbs last-dbs)
  (logger "(new-onset) delta:" delta "dbs:" dbs "last-dbs:" last-dbs)
  (set! debouncing 0)
  (set! onset-ksmp 0)
  '()) 

(define (note-detected)
  (logger "***** (note-detected) *****")
  ; get the median freqency from the buf
  (let* ((cps (get-frq-buf-median))
         (note-num (round (cps->midi cps)))
         ;(dbs last-dbs)
         (dbs (get-dbs-buf-mean))
         (amp (dbs->amp dbs))
         (ksmp-since-last (- ksmp last-note-ksmp))
         )
    (logger "Note:  - note-num:" note-num "amp:" amp "cps: " cps "dbs:" dbs )
    ;(logger "frq-buf:" frq-buf "dbs-buf:" dbs-buf)
    
    ; ignore repeated notes as they seem to come a lot
    ; todo: should be repeated under a threshold, so need a last note time stamp too
    (if (or (not (= note-num last-note-num))
            (> ksmp-since-last repeat-min-ksmp))
      (on-note note-num amp))
    
    ; store last note number and time for filtering out dups
    (set! last-note-num note-num)
    (set! last-note-ksmp ksmp)
    ; for debugging, copy buf to another top level far for inspecting
    ;(set! buf (copy frq-buf))
    '()))

; the actual handler for a note event
(define (on-note note-num amp)
  (post "(on-note)" note-num amp)
  ;(out 0 (list 'note-num note-num amp))
  (out 0 (list 'note-out note-num (* 127 amp)))
  '())


(define (frq-buf-midi buf)
  (map round (map cps->midi buf)))


;testing util
(define (kpass cps dbs)
  (frq-in cps)
  (dbs-in dbs))




(post "... sax-tracker-mod.scm done loading")
