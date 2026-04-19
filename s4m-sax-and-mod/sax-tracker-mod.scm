(post "sax-tracker-mod.scm")

; unfinished business:
; - the repeated note filtering is over eager, I think it doesn't allow any repeated notes

; how many ksmps after an onset to wait before beginning to write to freq buf
(define onset-wait 20)
; number of samples after the wait to collect and take median of
(define frq-buf-size 7)
(define rms-buf-size 7)
; rms-delta between ksmps to call an onset
(define delta-thresh 0.0103) ; 0.01 seems good 
(define delta-thresh 0.009) ; 0.01 seems good 
; min rms for considering onset a note
(define rms-thresh 0.05)  ; nominall 0.05
; min number of ksmps between detected onsets (~ 1.3 ms per)
(define debounce-ksmps 0) ;

; scaling thresholds for converting rms to amplitude
(define rms-ceiling 0.6)  ; rms val that will produce amp 1
(define rms-floor 0.05)   ; rms val for amp 0  

;****************************************************************************************************
(define debug 0)
(define (logger . args)
  (if (= debug 1) 
    (apply post args))
  '())

; abs value counting ksmps
; TODO this will need to be smarter later to not run over
(define ksmp 0)
(define last-rms 0.0)
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
; frq and rms buf plumbing
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

(define rms-buf-median-i (floor (/ rms-buf-size 2)))
(define rms-buf (make-vector rms-buf-size 0.001))
(define rms-buf-i 0)

(define (rms-buf-add val)
  (set! (rms-buf rms-buf-i) val)
  (set! rms-buf-i (if (= rms-buf-i (- rms-buf-size 1)) 0 (+ 1 rms-buf-i)))
  '())

(define (get-rms-buf-mean)
  (let* ((sum 0))
    (dotimes (i rms-buf-size) 
      (set! sum (+ sum (rms-buf i))))
    (/ sum rms-buf-size)))  


(define (cps->midi cps)
  ; log takes second optional arg for base ; 220 is the cps for A 57
  (if cps (+ (* 12 (log (/ cps 220) 2)) 57) 0))

(define (rms->amp rms-in)
  (let* ((rms-max rms-ceiling)  ; get from global configs
         (rms-min rms-floor)    ; should be 0.05
         ; clamp the incoming signal to our determined range
         (rms-in (if (< rms-in rms-min) rms-min rms-in))
         (rms-in (if (> rms-in rms-max) rms-max rms-in))
         (rms-range (- rms-max rms-min))
         (rms-norm (/ (- rms-in rms-min) rms-range)))
    rms-norm))


(define (peek)
  (post "**** Tracker state *****")
  (post "  - delta-thresh:" delta-thresh)
  (post "  - rms-thresh:" rms-thresh)
  (post "  - debouncing:" debouncing)
  (post "  - onset-ksmp:" onset-ksmp)
  '())

; function called on every ksmp with a frq value
; this just sets the frq value, leaves processing to rms-in
; runs before rms-in, and writes to the frq-buf if the onset flags indicate it's time
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



; function called on every ksmp with an rms value
(define (rms-in rms)
  ;(logger "  - (rms-in)" rms)
  ;(if onset-ksmp 
  ;  (logger "onset-ksmp" onset-ksmp))

  ; debouncing count sets the min number of ksmps between detected onsets
  (if debouncing (begin
      ;(logger  "    - debouncing:" debouncing)
      (set! debouncing (+ 1 debouncing))))
  (if (and debouncing (> debouncing debounce-ksmps)) (begin
      ;(post  "    - ending debounce") 
      (set! debouncing #f)))

  ; writing of rms to rms buffer, based on flags set in the frq function
  ; TODO later, would make more sense for flags to be all set here so all lifecycle
  ; handling happens in the same function
  (if (and onset-ksmp 
        (>= onset-ksmp onset-wait)                    
        (<  onset-ksmp (+ onset-wait rms-buf-size)))  
    (begin
      (rms-buf-add rms)
      (logger "  - adding to rms-buf, onset-ksmp:" onset-ksmp "rms-buf now:" rms-buf)))

  ; onset detection
  (let ((rms-delta (- rms last-rms)))
    ;(logger "  - rms-delta: " rms-delta)
    ; if amp and delta high enough and we are not in an onset debounce, 
    ; we start a new onset by calling trigger
    (if (and 
          (not debouncing)
          (>= rms rms-thresh) 
          (>= rms-delta delta-thresh))
      (new-onset rms-delta rms last-rms))
    (set! last-rms rms)
    '()))

; trigger is limited to running once per debounce period, in rms-in
; the call to trigger-onset starts the frq ring buff writes and onset count up
; by setting those to 0 
(define (new-onset delta rms last-rms)
  (logger "(new-onset) delta:" delta "rms:" rms "last-rms:" last-rms)
  (set! debouncing 0)
  (set! onset-ksmp 0)
  '()) 

(define (note-detected)
  ;(logger "***** (note-detected) *****")
  ; get the median freqency from the buf
  (let* ((cps (get-frq-buf-median))
         (note-num (round (cps->midi cps)))
         ;(rms last-rms)
         (rms (get-rms-buf-mean))
         (amp (rms->amp rms))
         (ksmp-since-last (- ksmp last-note-ksmp))
         )
    (logger "Note:  - note-num:" note-num "amp:" amp "cps: " cps "rms:" rms )
    ;(logger "frq-buf:" frq-buf "rms-buf:" rms-buf)
    
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
  (out 0 (list 'note-num note-num amp))
  '())


(define (frq-buf-midi buf)
  (map round (map cps->midi buf)))


;testing util
(define (kpass cps rms)
  (frq-in cps)
  (rms-in rms))




(post "... sax-tracker-mod.scm done loading")
