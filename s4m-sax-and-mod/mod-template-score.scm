; score file for mod template, based on the bell comp files

(define (start-seqs seqs)
  (delay 1 (lambda ()
    (dolist (s seqs) (s 'start)))))
;
(define (stop-seqs . seqs)
  (dolist (s seqs) (s 'stop)))

(define (set-roots . seqs) 
  (dolist (s seqs) (s 'set :root root)))

(define tempo 70)

(define (ramp chan dur-beats from to)
  (let* ((time (* dur-beats (/ 60.0 tempo))))
    (send 'csound 'event 'i chan 0 time from to)))

(define (ramp-b chan dur-beats from to)
  (let* ((time (* 4 dur-beats (/ 60.0 tempo))))
    (send 'csound 'event 'i chan 0 time from to)))

(define (set-pitch-spreads amt seq-list)
  (dolist (seq seq-list)
    (seq 'set :pitch-index-spread amt)))

(define (set-extra-note-odds numer denom seq-list)
  (dolist (seq seq-list)
    (seq 'set :extra-note-odds (list numer denom))))

(define (set-extra-retrig-odds numer denom seq-list)
  (dolist (seq seq-list)
    (seq 'set :extra-retrig-odds (list numer denom))))

(define (set-del-mults mult-list seq-list)
  (dolist (seq seq-list)
    (seq 'set :del-mults mult-list)))


(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  :1-1 ((post "score started"))
  ;:1-1    ((start-seqs s1 s2 s3 s4 s5 s6 s7 s8)
  ;:1-1    ((start-seqs s1 s2))
  ;         (set-mutes #(1 1 1 1 1 1 1 1)))

  ;:121-1-100 ((post "121 A")
  ;        (live-stop)
  ;        (live-stop)
  ;        )

 )))


