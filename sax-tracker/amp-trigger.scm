(post "amp-trigger.scm")

(define debug 0)
(define (logger . args)
  (if (= debug 1) 
    (apply post args)))

(define last-rms 0.0)
(define cps 0.0)

(define delta-thresh 0.01) ; 0.01 seems good 
(define rms-thresh 0.1)
(define debouncing #f)
(define debounce-ms 100)  ; gate time in ms

(define lowest 36)
(define highest 72)

(define (peek)
  (post "delta-thresh:" delta-thresh)
  (post "rms-thresh:" rms-thresh)
  (post "debounce-ms:" debounce-ms)
)

; function called on every ksmp with a frq value
; this just sets the frq value, leaves processing to rms-in
(define (frq-in cps-arg)
  (logger "(frq-in)" cps-arg)
  ; ignore incoming freqs that are nonsensical
  (if (and (> cps-arg lowest) (< cps-arg highest))
    (set! cps cps-arg))
  '())

; function called on every ksmp with an rms value
(define (rms-in rms)
  (logger "(rms-in)" rms)
  ;(let ((rms-delta (/ (+ last-rms 0.000001) (+ rms 0.000001))))
  (let ((rms-delta (- rms last-rms)))
    (logger "  - rms-delta: " rms-delta)
    (if (and 
          (>= rms rms-thresh) 
          (>= rms-delta delta-thresh)
          (not debouncing))
      (trigger rms-delta rms last-rms cps))
    (set! last-rms rms)
    '()))

(define (trigger delta rms last-rms cps)
  (post "(trigger) note" delta rms last-rms)
  (post "  - cps:" cps)
  (post "  -")
  (set! debouncing #t) 
  (delay debounce-ms (lambda()(set! debouncing #f) '()))
  '()
) 
