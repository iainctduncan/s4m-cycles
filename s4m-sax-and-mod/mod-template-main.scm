; sequence file for bell-comp-5.scm

(post "mod-template-main.scm")
(load-from-max "mod-template-helpers.scm")
(load-from-max "s4m-bell-seq-jicv.scm")
(load-from-max "s4m-bell-seq-cv.scm")
(load-from-max "s4m-trigger-seq-cv.scm")
(load-from-max "s4m-score-local-version.scm")
(load-from-max "mod-template-transforms.scm")
(load-from-max "mod-template-state.scm")
(load-from-max "mod-template-score.scm")
(load-from-max "mod-template-controllers.scm")
(load-from-max "mod-template-midi-input.scm")
(load-from-max "mod-template-presets.scm")

;(define s1 (make-bell-seq-jicv 's1 :channel 1)) 
(define s1 (make-trigger-seq-cv 's1 :channel 1)) 
(define s2 (make-trigger-seq-cv 's2 :channel 2)) 
(define s3 (make-trigger-seq-cv 's3 :channel 3)) 
(define s4 (make-trigger-seq-cv 's4 :channel 4)) 
(define s5 (make-trigger-seq-cv 's5 :channel 5)) 
;(define s6 (make-trigger-seq-cv 's6 :channel 6)) 
;(define s1 (make-bell-seq-cv 's1 :channel 1)) 


(define active-seqs (list s1 s2 s3 s4))
(define (get-active-seq i)
  (post "(get-active-seq) i:" i)
  (if (<= i (length active-seqs)) (active-seqs i) #f))
;(define active-seqs (list s1))

; default target seq
(select-seq 0)

; function to clock all sequencers off one main metro
(define (clock-tick)
  ;(post "(clock-tick)")
  (dolist (seq active-seqs)
    (if (seq 'get 'playing)
      (seq 'run-step)))
  '())

(define (tune)
  (post "tuning routine")
  ;(set-mutes #(1 1 1 1   1 1 1 1))
  ;(score 'stop)
  (set-loop-len-all 0)
  (set! ($ :note-reps) #f)
  (dolist (s active-seqs) ; s3 s4 s5 s6 s7 s8))
    (post "update" (s 'get 'name))
    ;(s 'add-note-at 0 (hash-table :note-num 60 :dur 1800 :vel 90 :reps #f))
    (s 'add-note-at 0 (hash-table :note-num 60 :dur 120 :vel 120 :reps #f))
    (s 'add-note-at 480 (hash-table :note-num 60 :dur 120 :vel 90 :reps #f))
    (s 'add-note-at 960 (hash-table :note-num 60 :dur 120 :vel 60 :reps #f))
    (s 'add-note-at 1440 (hash-table :note-num 60 :dur 120 :vel 30 :reps #f))
    ;(s 'set :loop-len 4)
    (s 'start))
  (send 'metro 1) 
  (send 'transport 1))

(define (all-gates state)
  (dolist (obj '(es5-1 es5-2 es5-3 es5-4 es5-5 es5-6 es5-7 es5-8))
    (send obj state)))

(define (live-stop)
  (post "(live-stop)")
  (score 'stop)
  (all-gates 0)
  ; to do add notes off to the hyrbid synths
  (send 'hybrids-off 'bang)
  (dolist (s active-seqs) (s 'stop))
  (send 'metro 0) (send 'transport 0) (send 'locate 0))

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) (send 'transport 1)
  ;(score 'cue 45) (score 'start)
  ;(score 'cue 1) (score 'start)
  ;(start-seqs active-seqs)
  ;(set-mutes #(1 1 1 1   1 1 1 1  ))
  (dolist (s active-seqs) (s 'start))
  (load-start)
)


; the trigger seq
(s1 'set :amp 0.0 :amp-unit 0.05 
  ;:seq-data (hash-table 0 (n% 60 90)   120 (n% 62 90)   240 (n% 64 90))
  :seq-data (hash-table 
    ;0   (n% 48 90 210)
    ;720 (n% 48 90 210)
    ;960 (n% 60 0.8 240) 
    )
)

(s2 'set :amp 0.0 :amp-unit 0.05 
  ;:seq-data (hash-table 0 (n% 60 90)   120 (n% 62 90)   240 (n% 64 90))
  :seq-data (hash-table 
    ;360 (n% 67 0.2 240) 
    ;480 (n% 72 0.8 240) 
    )
)

(s3 'set :amp 0.0 :amp-unit 0.05 
  ;:seq-data (hash-table 0 (n% 60 90)   120 (n% 62 90)   240 (n% 64 90))
  :seq-data (hash-table 
    ;360 (n% 67 0.2 240) 
    ;480 (n% 72 0.8 240) 
    )
)


;(s1 'add-process (lambda ($ %) 
;                    (set! ($ :amp-seq 2) (+ ($ :amp-seq 2) .01))
;                    (set! ($ :amp-seq 0) (- ($ :amp-seq 0) .01)))
;  (hash-table :until (lambda($) (>= ($ :amp-seq 2) 3))))
;(s1 'add-process 
;  (lambda ($ %)(set! ($ :amp-seq 3) (+ ($ :amp-seq 3) .05)))
;  (hash-table :reps 100 :until (lambda($)(>= ($ :amp-seq 3) 4)))
;  'increasing-amp-3
;  )




