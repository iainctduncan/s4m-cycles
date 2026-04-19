target-seq

; d f a

; we need to convert to scale degrees, should be 1 3 5 in Dm 
(modulo 64 12)


(begin

(define note-nums '(62 65 69 73))

(let* ((scale-step-nums (map (lambda(nn)(note-num->scale-step nn 'D 'dorian)) note-nums))
       (_ (post "scale-step-nums:" scale-step-nums))
       (transposed-step-nums (map (lambda (nn)(+ 1 nn)) scale-step-nums))
       (_ (post "transposed:" transposed-step-nums)))
       (transposed-chromatic-steps (map (lambda (nn)(scale-step-num->chromatic-step-num nn 'D 'dorian)
  '())
)
(post :hello)
(scale-step->note-num-lowest-oct 3 'D 'dorian)
( '(1 2 3))
(apply + #(1 2 3))
(transpose-note-nums '(62 65 69 73) 'D 'dorian 2)

(transpose-note-nums '(60 63 67) 'C 'dorian 1)

(transpose-note-nums '(60 63 67) 'C 'dorian 2)

(transpose-note-nums '(60 63 67 70) 'C 'dorian 1)

($ :seq-num)

(pick-seq-num 5)

($ :take-num)

(round (random 2/3))

(random 127) 

(begin 
  (define count 0)
  (dotimes (i 10000)
    (if (test-odds 10 10) (inc! count)))
  (post "count:" count)
)  

(floor (/ 2 2))
(floor (/ 0 2))

(/ .3 1)

(rms-vel 0.1)

(define (rms-vel rms-in)
  (let* ((rms-max 0.4)
         (rms-min 0.1) ; should be 0.05
         ; clamp the incoming signal to our determined range
         (rms-in (if (< rms-in rms-min) rms-min rms-in))
         (rms-in (if (> rms-in rms-max) rms-max rms-in))
         ;(rms-incr (1 / (- rms-in rms-min))
         (rms-norm (* (/ (- rms-max rms-min) 1) (- rms-in rms-min))))
    rms-norm))

(post :hello)

(begin
(post "rms->vel 0.1" (rms->vel 0.1))
(post "rms->vel 0.3" (rms->vel 0.3))
(post "rms->vel 0.25" (rms->vel 0.25))
)
