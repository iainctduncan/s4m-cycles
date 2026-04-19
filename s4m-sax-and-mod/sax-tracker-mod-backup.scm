(post "sax-tracker-mod.scm")
; script for tracking pitch and amplitude from sax
; Settings to tweak

; how many ksmps after an onset to wait before beginning to write to freq buf
(define onset-wait 20)
; number of samples after the wait to collect and take median of
(define frq-buf-size 7)
; rms-delta between ksmps to call an onset
(define delta-thresh 0.010) ; 0.01 seems good 
; min rms for considering onset a note
(define rms-thresh 0.09)
; min number of ksmps between detected onsets (~ 1.3 ms per)
(define debounce-ksmps 16) ;

;****************************************************************************************************
(define debug 0)
(define (logger . args)
  (if (= debug 1) 
    (apply post args)))

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

; count kpasses after an onset, #f if not IN an onset
(define onset-ksmp #f)
(define frq-buf-median-i (floor (/ frq-buf-size 2)))
(define frq-buf (make-vector frq-buf-size 0))
(define frq-buf-i 0)

(define (frq-buf-add val)
  (set! (frq-buf frq-buf-i) val)
  (set! frq-buf-i (if (= frq-buf-i (- frq-buf-size 1)) 0 (+ 1 frq-buf-i))))

(define (get-frq-buf-median)
  (let* ((buf-copy (copy frq-buf))
         (buf-sorted (sort! buf-copy <)))
    (buf-sorted frq-buf-median-i)))      


(define (cps->midi cps)
  ; log takes second optional arg for base ; 220 is the cps for A 57
  (if cps (+ (* 12 (log (/ cps 220) 2)) 57) 0))


(define (peek)
  (post "**** Tracker state *****")
  (post "  - delta-thresh:" delta-thresh)
  (post "  - rms-thresh:" rms-thresh)
  (post "  - debouncing:" debouncing)
  (post "  - onset-ksmp:" onset-ksmp)

)

; function called on every ksmp with a frq value
; this just sets the frq value, leaves processing to rms-in
; runs before rms-in
(define (frq-in cps-arg)
  ; ignore incoming freqs that are nonsensical
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
          (logger "  - adding to frq-buf, onset-ksmp:" onset-ksmp "frq-buf now:" frq-buf)
          (logger "  - frq buf midi" (frq-buf-midi frq-buf))
          (set! onset-ksmp (+ 1 onset-ksmp))
        )
      ; case done writing, set flag and call note fun
      ((and onset-ksmp (= (- onset-ksmp onset-wait) frq-buf-size))
        (note-detected)
        (set! onset-ksmp #f))
      ; else in onset but waiting
      (onset-ksmp
        (set! onset-ksmp (+ 1 onset-ksmp))))
   )) ; end if for nonsense input
  '())

; function called on every ksmp with an rms value
(define (rms-in rms)
  ;(logger "  - (rms-in)" rms)
  ;(if onset-ksmp 
  ;  (logger "onset-ksmp" onset-ksmp))

  (if debouncing (begin
      ;(logger  "    - debouncing:" debouncing)
      (set! debouncing (+ 1 debouncing))))
  (if (and debouncing (> debouncing debounce-ksmps)) (begin
      ;(post  "    - ending debounce") 
      (set! debouncing #f)))

  ;(let ((rms-delta (/ (+ last-rms 0.000001) (+ rms 0.000001))))
  (let ((rms-delta (- rms last-rms)))
    ;(logger "  - rms-delta: " rms-delta)
    ; if amp and delta high enough and we are not in an onset debounce, 
    ; we start a new onset by calling trigger
    (if (and 
          (not debouncing)
          (>= rms rms-thresh) 
          (>= rms-delta delta-thresh))
      (trigger-onset rms-delta rms last-rms))
    (set! last-rms rms)
    '()))

; trigger is limited to running once per debounce period, in rms-in
; the call to trigger starts the frq ring buff writes and onset count up
; by setting those to 0 
(define (trigger-onset delta rms last-rms)
  (logger "(trigger-onset) delta:" delta "rms:" rms "last-rms:" last-rms)
  (set! debouncing 0)
  (set! onset-ksmp 0)
  '()
) 

(define (note-detected)
  (logger "***** (note-detected) *****")
  ; get the median freqency from the buf
  (let* ((cps (get-frq-buf-median))
         (note-num (round (cps->midi cps)))
         (rms last-rms)
         (ksmp-since-last (- ksmp last-note-ksmp))
         )
    (logger "note-num:" note-num "cps: " cps "frq-buf:" frq-buf)
    
    ; ignore repeated notes as they seem to come a lot
    ; todo: should be repeated under a threshold, so need a last note time stamp too
    (if (or (not (= note-num last-note-num))
            (> ksmp-since-last repeat-min-ksmp))
      (on-note note-num))
    
    ; store last note number and time for filtering out dups
    (set! last-note-num note-num)
    (set! last-note-ksmp ksmp)
    ; for debugging, copy buf to another top level far for inspecting
    ;(set! buf (copy frq-buf))
    ))

; the actual handler for a note event
(define (on-note note-num)
  (out 0 (list 'note-num note-num)))


(define (frq-buf-midi buf)
  (map round (map cps->midi buf)))


;testing util
(define (kpass cps rms)
  (frq-in cps)
  (rms-in rms))




(post "... sax-tracker-mod.scm done loading")
