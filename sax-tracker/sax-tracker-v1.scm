(post "sax-tracker.scm")

(define debug 0)
(define (logger . args)
  (if (= debug 1) 
    (apply post args)))

(define last-rms 0.0)
(define cps 0.0)

(define delta-thresh 0.01) ; 0.01 seems good 
(define rms-thresh 0.1)

; debounce logic is separate from frq buffer logic so
; that debounce time can be different from size of frq-buffer
(define debouncing #f)  ; can be #f or int
(define debounce-ksmps 100) ;

; count kpasses after an onset, #f if not IN an onset
(define onset-ksmp #f)
; ring buffer for cps
(define frq-buf-size 21)
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
  ; log takes second optional arg for base
  ; 220 is the cps for A 57
  (+ (* 12 (log (/ cps 220) 2)) 57))

; abs value counting ksmps
; TODO this will need to be smarter later to not run over
(define ksmp 0)

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
  (logger "(frq-in) ksmp: " ksmp "cps:" cps-arg)
  (set! ksmp (+ 1 ksmp))
  ; ignore incoming freqs that are nonsensical
  (set! cps cps-arg)
  ; if we are in an onset, we write to the frq-buf for frq-buf-size passes
  (if onset-ksmp (logger "  onset-ksmp:" onset-ksmp))
  (cond
    ; case writing, keep doing it for the buf size
    ((and onset-ksmp (< onset-ksmp frq-buf-size))
      (frq-buf-add cps-arg)
      (set! onset-ksmp (+ 1 onset-ksmp))
      (logger "  - frq-buf now:" frq-buf)
      )
    ; case done writing, set flag and call note fun
    ((and onset-ksmp (= onset-ksmp frq-buf-size))
      (note-detected)
      (set! onset-ksmp #f)))
  '())

; function called on every ksmp with an rms value
(define (rms-in rms)
  (logger "  - (rms-in)" rms)

  (if debouncing (begin
      (logger  "    - debouncing:" debouncing)
      (set! debouncing (+ 1 debouncing))))
  (if (and debouncing (> debouncing debounce-ksmps)) (begin
      (post  "    - ending debounce") 
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
  (post "(trigger-onset) delta:" delta "rms:" rms "last-rms:" last-rms)
  (set! debouncing 0)
  (set! onset-ksmp 0)
  '()
) 

(define (note-detected)
  (post "***** (note-detected) *****")
  ; get the median freqency from the buf
  (let* ((cps (get-frq-buf-median))
         (note-num (round (cps->midi cps)))
         (rms last-rms))
    (post "ksmp:" ksmp "cps: " cps "note:" note-num "  frq-buf:" frq-buf)
    (out 0 (list 'note-num note-num))
    ))


;testing util
(define (kpass cps rms)
  (frq-in cps)
  (rms-in rms))




(post "... sax-tracker.scm done loading")
