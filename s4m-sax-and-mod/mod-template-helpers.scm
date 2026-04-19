; helpers, to do add to generic helpers 
(load-from-max "test-mod-template-helpers.scm")

; left off here, it runs forever, oops
(define (hash-table-clone source . args)
  (let* ((new-ht (copy source)))
    (if (>= (length args) 2)
      (let recur ((rargs args))
        (set! (new-ht (rargs 0)) (rargs 1))
        (if (not (null? (cddr rargs)))
          (recur (cddr rargs)))))
    new-ht))      

(define (shuffled-range len)
  "return a shuffled list from 0 to len"
  (let* ((ht-nums (hash-table))
         (results (make-vector len #f)))
    (dotimes (i len) (set! (ht-nums i) #t))
    (dotimes (i len)
      (let* ((candidates (hash-table-keys ht-nums))
             (choice (candidates (random (length candidates)))))
        (set! (results choice) i)
        (set! (ht-nums choice) #f)))
    results))   


(define (test-odds numer denom)
  "make a random determination within some odds"
  (let* ((roll (+ 1 (random denom)))  ; from 0 to 7 say
         (res (<= roll numer)))
    ;(post "test-odds) denom:" denom "numer:" numer "roll:" roll "numer < roll:" res)
    res))       


; convert letter name to an integer offset (assumes C is 0)
; for going from letter notation to integer/midi values
; handles double sharps and flats 
; same as in music-helpers.scm
(define pitch-class->int (hash-table
  'C 0    'B# 0   'Dbb 0   
  'C# 1   'Db 1   'B## 1 
  'D 2    'C## 2  'Ebb 2
  'Eb 3   'D# 3   'Fbb 3
  'E 4    'D## 4  'Fb 4
  'F 5    'E# 5   'Gbb 4
  'F# 6   'Gb 6   'E## 6
  'G 7    'F## 7  'Abb 7
  'Ab 8   'G# 8    
  'A 9    'G## 9  'Bbb 9
  'Bb 10  'A# 10  'Cbb 10
  'B 11   'A## 11 'Cb 11
 ))


; note these are zero-up scale steps, add 1 to get conventional scale degree
; it's the amount of scale degrees we move by, 2 chromatic steps == move up 1 scale degree
(define (chromatic-step-num->scale-step-num scale chr-step-num)
  ;(post "(chromatic-step-num->scale-step-num)" scale chr-step-num)
  (define table (hash-table
    'dorian (hash-table 0 0     1 0.5   2 1     3 2    4 2.5   5 3   
                        6 3.5   7 4     8 4.5   9 5    10 6    11 6.5 )))
  (let ((res (table scale chr-step-num)))
    (if res 
      (begin 
        ;(post "  returning" res) 
      res) 
      (begin ; else error
        (post "Error in chromatic-step-num->scale-step-num for" scale chr-step-num)
        (error 'chromatic-step-num->scale-step-num)))))

(define (scale-step-num->chromatic-step-num scale scale-step-num)
  ;(post "(scale-step-num->chromatic-step-num)" scale scale-step-num)
  (define table (hash-table
    ; note these are zero-up scale steps, add 1 to get conventional scale degree
    'dorian (hash-table 0 0   0.5 1   1 2   1.5 3   2 3    2.5 4   3 5   3.5 6   
                        4 7   4.5 8   5 9   5.5 10  6 10   6.5 11   )))
  (let ((res (table scale scale-step-num)))
    (if res 
      (begin ;(post "  returning" res) 
      res) 
      (begin ; else error
        (post "Error in scale-step-num->scale-step-num for" scale scale-step-num)
        (error 'scale-step-num->chromatic-step-num)))))


(define (note-num->scale-step note-num key scale)
   "get scale number for a midi note num and key/scale combination
   (note-num->scale-step 62 'D 'dorian) -> 1 "  
   (let* ((key-as-int (pitch-class->int key))
          (chr-step (modulo (- note-num key-as-int) 12))
          (scale-step (chromatic-step-num->scale-step-num scale chr-step)))
    ;(post "(note-num->scale-step)" note-num key scale)
    ;(post "  key-as-int:" key-as-int "chr-step:" chr-step "returning scale-step:" scale-step)
    scale-step))

(define (scale-step->note-num-base scale-step key scale)
   "get a midi note number from a key and scale step number
   (scale-step->note-num 3 'D 'dorian) -> 65"  
   (let* ((chr-step (scale-step-num->chromatic-step-num scale scale-step))   ; now it's 0-12
          (key-as-int (pitch-class->int key))
          (note-num-lowest-oct (+ chr-step key-as-int)))
    ;(post "chr-step" chr-step "key-as-int" key-as-int "note-num-lowest-oct" note-num-lowest-oct)
    note-num-lowest-oct))
    
 
; transpose midi note nums given a key and scale
; NB: only works for dorian right now, haven't made the other scale tables!
(define (transpose-note-num n-num key scale amt-scale-steps)
  ;(post "--------------------------")
  ;(post "(transpose-note-num):" n-num key scale amt-scale-steps)
  (let* ((octave (floor (/ n-num 12)))
         (scale-step-num (note-num->scale-step n-num key scale))
         ;(_ (post "octave:" octave "scale-step-num:" scale-step-num))
         (transposed-step-num (+ scale-step-num amt-scale-steps))
         (transposed-step-num-mod (modulo transposed-step-num 7))
         ;(_ (post "transposed-step-num:" transposed-step-num "transposed-step-num-mod" transposed-step-num-mod))
         (octave-shift-steps (cond 
                                ((>= transposed-step-num 7) ; positive
                                  (* 12 (floor (/ transposed-step-num 7))))
                                ((<  transposed-step-num 0) ;negative is working
                                  (* -12 (ceiling (/ (abs transposed-step-num) 7))))
                                (else 0)))  
         ;(_ (post "octave-shift-steps:" octave-shift-steps))
         (new-n-num-base (scale-step->note-num-base transposed-step-num-mod key scale))
         (new-n-num (+ (* 12 octave) new-n-num-base octave-shift-steps))
         ;(_ (post "new-n-num-base:" new-n-num-base "new-n-num shifted" new-n-num))
         )
        new-n-num))

(define (transpose-note-nums note-nums key scale amt-scale-steps)
  (map (lambda (nn)
    (transpose-note-num nn key scale amt-scale-steps)) note-nums))


(define (reflect-scale-step step reflection-point)
  ;(post "(reflect-scale-step) step:" step "reflection-point" reflection-point)
  (let* ((step-delta (- reflection-point step))
         (res-step (+ step-delta reflection-point)))
     ;(post "step-delta:" step-delta "result:" res-step)
     res-step))


; IN prog
(define (reflect-note-num nnum rpoint-nnum key scale)
  (post "------")
  (post "(reflect-note-num) nnum:" nnum "rpoint:" rpoint-nnum "key/scale:" key scale)
  (let* ((octave (floor (/ nnum 12)))  
         ; convert subj-note to step
         (subj-step (note-num->scale-step nnum key scale))
         (_ (post "  subj-step:" subj-step))
          ; convert rpoint to step
         (rpoint-step (note-num->scale-step rpoint-nnum key scale))
         (_ (post "  rpoint-step:" rpoint-step))
         ; calculate new step
         (res-step (reflect-scale-step subj-step rpoint-step))
         (_ (post "  res-step:" res-step))
         ; convert new step back to note num base (missing octave info)
         (res-nnum-base (scale-step->note-num-base res-step key scale))
         (_ (post "  res-nnum-base:" res-nnum-base))
         ; add back in the octave info
         (res-nnum (+ (* octave 12) res-nnum-base)) 
         (_ (post "  res-nnum:" res-nnum))
        )
     (post "res-nnum-base:" res-nnum-base "res-nnum:" res-nnum)
     res-nnum
     ))   

(define (reflect-note-nums nnums rpoint-nnum key scale)
  (map (lambda(nnum)(reflect-note-num nnum rpoint-nnum key scale)) nnums))

