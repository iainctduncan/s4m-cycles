(post "mod-template-presets.scm")
; this holds preset functions

(define (load-preset preset-ht)
  (post "loading preset" preset-ht) 
  (for-each (lambda (kv)(set! ($ (car kv)) (cdr kv))) preset-ht)
    '())


(define p-1 (hash-table
    :note-reps 7
    :stretch 2
    :transpose 0
    :drop-in-reps 0
    :drop-in-rep-transform #f
    :transforms '(
      (tfm-die-off) 
    )
))

(define (pick-seq-num offset)
  (let* ((curr-seq-i ($ :seq-i))
         (next-seq-i (+ offset curr-seq-i))
         (next-seq-i (modulo next-seq-i (length active-seqs))))
    (post "(pick-seq-num) returning" next-seq-i)
    next-seq-i))

(define (load-start)
  (post "load-start")
  (load-preset (hash-table
    :note-reps 4
  ))
  (set-loop-len-all 3)  ; 8 bar loop
)

(define (algo-1)
  (post "(algo-1) running")
  (post "  - dropping in on track 2")
  (load-preset (hash-table
    :note-reps 2
    :stretch 1  :drop-reps 2
    :transforms '(
      (tfm-delay 0) 
      (tfm-die-off 3)
      (tfm-direction 'reverse)
    )))
  ; drop in on current seq  
  (drop-in ($ :seq-i))

  (load-preset (hash-table
    :note-reps 2
    :drop-in-reps 3  :drop-in-delay 4 
    :drop-in-rep-transform #f
    :transforms '( 
      (tfm-delay 2) 
      (tfm-stretch 2) 
      (tfm-die-off 3)
      (tfm-c-transpose 0)
  ))) 
  (if (> ($ :take-id) 0)
    (drop-in (pick-seq-num 1)))

  (load-preset (hash-table
    :note-reps 2
    :drop-in-reps 3  :drop-in-delay 8 
    :drop-in-rep-transform #f
    :transforms '( 
      (tfm-delay 4) 
      (tfm-stretch 1.5) 
      ;(tfm-d-transpose 5) 
      (tfm-die-off 3)
      (tfm-direction 'reverse)
      (tfm-c-transpose 0)
  ))) 
  (if (> ($ :take-id) 0)
    (drop-in (pick-seq-num 2)))

  (load-preset (hash-table
    :note-reps 2
    :drop-in-reps 2  :drop-in-delay 3 
    :drop-in-rep-transform #f
    :transforms '( 
      (tfm-delay 4) 
      (tfm-stretch 1) 
      ;(tfm-d-transpose 5) 
      (tfm-die-off 2)
      (tfm-shuffle-pitches)
  ))) 
  
  (if (> ($ :take-id) 0)
    (drop-in (pick-seq-num 3)))

)


(define p-2 (hash-table
    :stretch 2
    :transpose 5
    :drop-in-reps 3
    :drop-in-rep-transform #f
    :transforms '(
      (tfm-stretch :stretch)
      (tfm-die-off) 
      (tfm-d-transpose :d-transpose)
    )
))

(define p-3 (hash-table
    :stretch .75
    :transpose 2
    :drop-in-reps 3
    :drop-in-rep-transform #t
    :transforms '(
      (tfm-stretch :stretch)
      (tfm-die-off) 
      (tfm-d-transpose :d-transpose)
    )
))

(define p-4 (hash-table
    :stretch .75
    :transpose 4
    :drop-in-reps 3
    :drop-in-delay 6
    :drop-in-rep-transform #t
    :transforms '(
      (tfm-stretch :stretch)
      (tfm-die-off) 
      (tfm-d-transpose :d-transpose)
    )
))

