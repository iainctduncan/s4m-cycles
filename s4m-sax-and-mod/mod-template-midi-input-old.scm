(post "mod-template-midi-input.scm")
; device specific midi input funs go here and read/write to the global state container

(define (between? from to val)
  (and (>= val from) (<= val to)))

(define (midi-note-ks-37 note-num vel)
  ;(post "midi-note-in-ks-37" note-num vel)
  ;(post "  target-seq:" target-seq)
  (cond 
    ((and (> vel 0) (> ($ :curr-bend) 0))
      (on-note-in note-num vel)))'())

(define (midi-bend-ks-37 val)
  (post "midi-bend-ks-37" val)
  (set! ($ :curr-bend) val)
  '())

(define (midi-cc-ks-37 cc val)
  (post "midi-cc-ks-37" cc val)
  (cond
    ((eq? cc 0)
      (post "selecting seq" (+ 1 val))
      (select-seq val))
    ((= cc 51); stop button on keystep
      (target-seq 'clear))
    ((and (= cc 64) (= val 127)) ; pedal down
      (start-take))
    ((and (= cc 64) (= val 0)) ; pedal up
      (end-take))
    (else
      (post "unhandled cc message for ks-37 cc" cc)))
  '())  

(define (midi-cc-fire cc val)
  (post "midi-cc-ks-37" cc val)
  '()
)

; fire buttons run from 54 to 117
(define (midi-note-fire nnum vel)
  ;(post "midi-cc-ks-37" nnum vel)
  (if (> vel 0)
    (cond 
      ((between? 36 39 nnum) ; side buttons, choose seq 
        (select-seq (- nnum 36)))
      ((between? 54 117 nnum) 
        (let* ((btn-i (- nnum 54))
               (col (modulo btn-i 16))
               (row (floor (/ btn-i 16))))
          (fire-pad-btn row col)))
      ((= 31 nnum)   ; pattern up btn
        (drop-in))
      ((= 32 nnum)   ; pattern up btn
        (drop-in-now))
      ((= 33 nnum)   ; browser btn
        (drop-in-now-and-retransform))
      (else
        (if (> vel 0)
          (post "unhandled fire note" nnum))))
    '())
)

(define (fire-pad-btn row col)
  (post "fire-pad-btn row" row "col" col)
  (cond 
    ((eq? ($ :mode) 'play)
      (select-seq row)
      (set-loop-len (* 4 (+ 1 col))))
    (else
      '()))
  '())
