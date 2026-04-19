; transform functions for the mod template

; transforms are destructive to the take passed in, 
; deep copies should be made before passing in

(define (tfm-c-transpose $ take args)
  ;(post "(tfm-c-transpose) args:" args "take:" take)
  ;(post "(tfm-c-transpose) args:" args)
  ;(post "  - take:" take)
  (let* ((amt (args 0)))
    (if (not amt)
      (post "  - error, no transpose amt found")
      ;else do the transpose
      (dotimes (i (length take))
        (set! (take i :note-num) (+ amt (take i :note-num)))))
      take))

(define (tfm-d-transpose $ take args)
  (let* ((amt (args 0))
         ; for now, these just off the main control
         (key ($ :key))
         (scale ($ :scale)))
    (dotimes (i (length take))
      (set! (take i :note-num) 
        (transpose-note-num (take i :note-num) key scale amt)))
    take))

(define (tfm-d-reflection $ take args)
  ;(post "tfm-d-reflection")
  (let* ((rpoint-nnum (if ($ :reflection-nnum) ($ :reflection-nnum) ($ :last-nnum)))
         (key ($ :key))
         (scale ($ :scale)))
    (post "  reflecting, point:" rpoint-nnum "key:" key "scale:" scale)
    (dotimes (i (length take))
      (set! (take i :note-num) 
        (reflect-note-num (take i :note-num) rpoint-nnum key scale)))
    take))

(define (tfm-delay $ take args)
  (let ((ticks (args 0)))
    (dolist (n take)
      (set! (n :step) (+ ticks (n :step)))) 
    take))

(define (tfm-stretch $ take args)
  ;(post "(tfm-c-stretch) args:" args "take:" take)
  ;(post "(tfm-c-stretch) args:" args)
  (let* ((factor (args 0)))
    (dotimes (i (length take))
      (if (> i 0)
        (let* ((prev-note (take (- i 1))) 
               (this-note (take i))
               (distance (- (this-note :step) (prev-note :step)))
               (new-dist (floor (* distance factor)))
               (new-step (+ (prev-note :step) new-dist)))
          (set! (take i :step) new-step)
          (if (take i :dur)
            (set! (take i :dur) (floor (* factor (take i :dur))))
            (set! (take i :dur) (floor (* factor ($ :dur))))))))       
    take))

(define (tfm-direction $ take args)
  ;(post "(tfm-direction) args:" args "take:" take)
  ;(post "(tfm-direction) args:" args)
  (let* ((start-times (map (lambda (n)(n :step)) take))
        (ticks (args 0)))
    (reverse! take)
    (dotimes (i (length take))
      (set! (take i :step) (start-times i)))
    take))

; go through each note and change its reps 
(define (tfm-die-off $ take args)
  ;(post "(tfm-die-off) args:" args)
  ;(post "(tfm-die-off) args:" args "take:" take)
  (let* ((num-notes (length take))
         (offsets (shuffled-range num-notes)))
    (dotimes (i (length take))
      (post "   note:" (take i))
      (if (take i :reps)  ; only affects notes with reps set
        (begin ;(post "setting die off reps")
        (set! (take i :reps) (+ ($ :note-reps) (offsets i))))))
    take))


(define (tfm-shuffle-pitches $ take args)
  "shuffle all the pitches within a take"
  ;(post "(tfm-shuffle-pitch) args:" args)
  (let* ((num-notes (length take))
         (indexes (shuffled-range num-notes))
         (original-nnums (map (lambda(n)(n :note-num)) take))
         )
    (dotimes (i (length take))
      (set! (take i :note-num) (original-nnums (indexes i))))
    take))  


