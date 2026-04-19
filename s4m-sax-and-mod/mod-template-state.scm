; top level state for the modular improv set up

(define (inspect str obj)
  (post str)
  (dotimes (i (length obj))
    (post "  - " i " " (obj i))))

; global state for input routing
(define $ (hash-table
  :mode  'improv
  :armed #t
  :seq-i 0       ; index number of current seq in active seqs
  :seq #f         ; current seq object
  :curr-bend 64
  :dur 120
  :take-id  0     ; used to track takes uniquely 
  :in-take #f     ; flag for in middle of a take
  :last-take '()
  :last-transform '() ; so transforms can be dropped on the fly
  ; how many times notes get played before dying, false makes it forever
  ;:note-reps  #f   
  :note-reps  4
  ; current chain of transforms
  :transforms '( 
                )
  ; transform factors controlled by the fire buttons
  :stretch 1
  :c-transpose 0
  :d-transpose 0
  :invert 0
  :direction 'forward ; 'forward or  for retrograde

  ; controls where drops in get the take they will transform and drop in
  :drop-in-source 'last-take    ; 'last-take or 'last-transform
  :drop-in-reps  1      ; how many repeats of the drop in are done on the same track
  :drop-in-delay 8      ; delay in beats between drop in copies 
  :drop-in-rep-transform  #t  ; set to true to retransform for each rep
  
  :algo-on-take-end #t     ;
  :current-algo 'algo-1

  :next-seq-on-take-end #t ; bump to next seq on take end

  :record-mode  'capture  ; one of 'replace, 'blend, 'capture
  :play-note-ins #f     ; if #f, note ins are captured, but not played on the current track 

  :key  'C
  :scale  'dorian
  :reflection-nnum  #f
  :last-nnum  60    ; holds the last note-num played when not in take
                    ; used for reflection point if none
))

;****************************************************************************************************
; state changing functions that get called from the improv controller

; for setting from max messages
(define (mset k v)
  (set! ($ k) v))

(define (copy-take take)
  "return a 1-deep copy of a take"
  (map copy take))

(define (select-drop-in-source source)
  (post "(select-drop-in-source) to:" source)
  (set! ($ :drop-in-source) source))  

(define (select-transform-direction direction)
  (if (or (eq? direction 'forward) (eq? direction 'backward))
    (set! ($ :direction) direction)
    (post "ERROR: invalid direction:" direction))
  (post "Transform direction:" ($ :direction)))

(define (run-transform take)
  "run a transform on a take, returning an altered copy"
  ;(post "(run-transform) on take:" take)
  ;(post "(run-transform)")
  ;(post "   - current transform list:" ($ :transforms))
  (let ((tfm-take (copy-take take)))
    (dolist (tfm ($ :transforms)) 
      (let ((tfm-fun (eval (car tfm)))
            (args (cdr tfm)))
        ; convert kw args to looked up on state
        (dotimes (i (length args))
          (let ((arg (args i)))
            (if (keyword? arg)
              (set! (args i) ($ arg))))) 
        ;(post " - calling fun:" tfm-fun " with args:" args)
        (set! tfm-take (tfm-fun $ tfm-take args))))
    ; returned the transformed copy
    tfm-take))    


;(define (transform-take-buffer)
;  "destructively transform the take buffer, for running transforms multiple times"
;  (set! ($ :last-transform) (run-transform ($ :last-transform))))

(define (send-seq i . args)
  "helper to abort errors if sending to a non-existent seq"
  (let ((seq (get-active-seq i)))
    (if seq (apply seq args))))

(define (select-seq seq-index)
  (post "(select-seq)" seq-index "active-seqs:" active-seqs)
  (let ((seq-target (get-active-seq seq-index)))
    (if seq-target
      (begin 
        (post "selecting seq:" (seq-target 'get 'name))
        (set! ($ :seq) seq-target)
        (set! ($ :seq-i) seq-index))
      ; else no op
      (post "no active seq for index" seq-index))
  '()))

(define (select-next-seq)
  (post "SELECT-NEXT-SEQ")
  (post " seq-i" ($ :seq-i))
  (let* ((next-seq-i (+ 1 ($ :seq-i)))
         (next-seq-i (modulo next-seq-i (length active-seqs))))
    (post "next :" next-seq-i)
    (select-seq next-seq-i)))

(define (clear seq-i _)
  (post "(clear-seq) seq-i")
  (send-seq seq-i 'clear)) 

(define (set-loop-len seq-num len)
  (post "setting loop length for seq" seq-num "to" (+ 1 len) "bars")
  (let ((seq (active-seqs seq-num))
        (len-beats (* 4 (+ 1 len))))
    (seq 'set :loop-len len-beats)))

; note len takes numbers 0-up for pad control (ie send 0 for 4 beats)
(define (set-loop-len-all len)
  (let ((len-beats (* 4 (+ 1 len))))
    (post "setting all loop lens to" len-beats) 
    (dolist (seq active-seqs)
      (seq 'set :loop-len len-beats))))

(define (set-loop-top track len)
  (post "set-loop-top not yet implemented"))


(define (set-note-odds seq-i val)
  (post "(set-note-odds) seq" seq-i "val:" val)
  (let* ((seq (active-seqs seq-i)))
    (seq 'set :odds val)
    '()))

(define (set-amp-mult seq-i val)
  (post "(set-amp-mult) seq" seq-i "val:" val)
  (let* ((seq (active-seqs seq-i))
         (mult (/ val 127)))
    (seq 'set :amp-mult mult)
    '()))


(define (track-die-off track max-reps)
  (post "(track-die-off) track:" track "max-reps:" max-reps)
  (let* ((seq (active-seqs track))
         (seq-data (seq 'get :seq-data)))
    (for-each (lambda (kv)
      (let ((note (cdr kv))
            (reps (+ 1 (random max-reps))))
        ;(post "  - setting note reps to:" reps)
        (set! (note :reps) reps)))
      seq-data)))  

(define (start-take)
  (inc! ($ :take-id))
  (set! ($ :in-take) #t)
  (post "(start-take) id: " ($ :take-id))
  (set! ($ :last-take) '())
  ; if in pedal mode replace, set the wiping flag for the active seq
  (if (eq? ($ :record-mode) 'replace)
    (($ :seq) 'set :erasing #t)) 
)

(define (end-take)
  (post "(end-take)")
  (set! ($ :in-take) #f)
  (set! ($ :last-take) (reverse ($ :last-take)))
  ;(inspect " - take:" ($ :last-take))
  ; ending takes always ends erasing (which may or may not be on)
  (($ :seq) 'set :erasing #f) 

  (if (and ($ :algo-on-take-end) (not (null? ($ :last-take))))
    (apply (eval ($ :current-algo)) '()))

  (if ($ :next-seq-on-take-end) (select-next-seq))  
)

; TODO: controls to not even play notes
(define (on-note-in note-num vel)
  ;(post "(on-note-in) take:" ($ :take-id) "note-num" note-num "vel" vel)
  (if ($ :in-take)
    (let* ((step (($ :seq) 'get 'step-index))
           (take-id ($ :take-id))
           ; NB: duration is not set here, it will come from the sequencer
           (note (hash-table :step step :note-num note-num :vel vel 
                    :reps ($ :note-reps) :take take-id)))
      ; store note in the last-take buffer
      (set! ($ :last-take) (cons note ($ :last-take)))     
      ; if not in 'capture mode, add to currently selected sequencer
      ; (gets added to take either way)
      (if (not (eq? ($ :record-mode) 'capture))
        (($ :seq) 'add-note note)))
    ; else when not in take, store in last-nnum
    (set! ($ :last-nnum) note-num)) ; end if
  ; whether in a take or note, we play the note now if play-note-ins is on
  (if ($ :play-note-ins)
    (($ :seq) 'play-note note-num vel ($ :dur)))
)


(define (get-source-take-copy . args)
  "returns a copy of the last take or last transform, depending on :drop-in-source"
  (post "(get-source-take-copy) args" args)
  (let ((source-sym (if (null? args) ($ :drop-in-source) (args 0))))
    (cond
      ((eq? source-sym 'last-take)
        (post "**** using last-take")
        (copy-take ($ :last-take)))
      ((and (eq? source-sym 'last-transform) (not (null? ($ :last-transform))))
        (post "**** using last-transform")
        (copy-take ($ :last-transform)))
      (else ; use last take
        (post "**** no transform yet, using last-take")
        (copy-take ($ :last-take)))
      )))

(define (transform take)
  "run transform chain over a take, returning new take"
  (let ((tfm-take (copy take)))
    ; run the copied take through all active transforms
    (dolist (tfm ($ :transforms))
      (let ((tfm-fun (eval (car tfm)))
            (tfm-args (cdr tfm)))
        (set! tfm-take (tfm-fun $ tfm-take tfm-args))))
     tfm-take))   



(define (drop-in-at-ticks track at-ticks)
  "drop last transform into a track on the bar selected"
  (post "(drop-in-at-ticks) track:" track "at-ticks:" at-ticks 
         "drop-in-reps:" ($ :drop-in-reps)) 
  (let ((rep-delay-ticks (* 480 ($ :drop-in-delay))))
    ; loop for the drop in reps
    (dotimes (drop-in-i ($ :drop-in-reps))
      (let* (;(take ((get-source-take-copy))
             (take (if (and ($ :drop-in-rep-transform) (> drop-in-i 0))
                        (get-source-take-copy 'last-transform)
                        (get-source-take-copy)))
             ; if at-ticks arg was false, use tick time of first note in the take
             (at-ticks (if at-ticks at-ticks (take 0 :step))) 
             (seq (active-seqs track))
             (drop-in-rep-delay (* drop-in-i rep-delay-ticks))
             ; use the start time of the take as zero time
             (delta (take 0 :step))
             ; run the transform on the take
             (transformed-take (run-transform take))
             (_ (post "at-ticks:" at-ticks "delta:" delta)))
        (dolist (n transformed-take)
          (let* ((note-time (+ drop-in-rep-delay at-ticks (- (n :step) delta)))
                 (dur (if (n :dur) (n :dur) ($ :dur)))
                 (reps (if (n :reps) (n :reps) ($ :note-reps)))
                 (new-note (hash-table-clone n :dur dur :reps reps))
                )
            (seq 'add-note-at note-time new-note)))
        ; store transformed take in last-transform for reruns
        (set! ($ :last-transform) transformed-take))
  '())))

(define (drop-in track)
  "drop last transform in to a track, preserving start position"
  (drop-in-at-ticks track #f)
)

(define (drop-in-at track bar beat-offset)
  "drop last transform into a track on the bar selected"
  (post "(drop-in-at) track:" track "bar:" bar "beat-offset" beat-offset)
  (let ((time-ticks (+ (* bar 4 480) (* beat-offset 480))))
    (drop-in-at-ticks track time-ticks)))

(define (drop-in-now track _)
  "drop last transform into a track on the bar selected"
  (post "(drop-in-now) track:" track)
  (let* ((seq (active-seqs track))
         (now-ticks (seq 'get 'step-index)))
    (drop-in-at-ticks track now-ticks)))


; take-in funs are like drop in but sue the last take instead of transform

(define (take-in-at-ticks track at-ticks)
  "drop last transform into a track on the bar selected"
  (post "(take-in-at-ticks) track:" track "at-ticks:" at-ticks) 
  (let ((rep-delay-ticks (* 480 ($ :drop-in-delay))))
    ; loop for the drop in reps
    (dotimes (take-in-i ($ :drop-in-reps))
      (let* ((take (get-source-take-copy 'last-take))
             (seq (active-seqs track))
             (take-in-rep-delay (* take-in-i rep-delay-ticks))
             ; use the start time of the take as zero time
             (delta (take 0 :step))
             ; no transforms
             (_ (post "at-ticks:" at-ticks "delta:" delta)))
        (dolist (n take)
          (let* ((note-time (+ take-in-rep-delay at-ticks (- (n :step) delta)))
                 (dur (if (n :dur) (n :dur) ($ :dur)))
                 (reps (if (n :reps) (n :reps) ($ :note-reps)))
                 (new-note (hash-table-clone n :dur dur :reps reps))
                )
            (seq 'add-note-at note-time new-note))))
  '())))

(define (take-in-at track bar beat-offset)
  "drop last transform into a track on the bar selected"
  (post "(take-in-at) track:" track "bar:" bar "beat-offset" beat-offset)
  (let ((time-ticks (+ (* bar 4 480) (* beat-offset 480))))
    (take-in-at-ticks track time-ticks)))

(define (take-in-now track _)
  "drop last transform into a track on the bar selected"
  (post "(take-in-now) track:" track)
  (let* ((seq (active-seqs track))
         (now-ticks (seq 'get 'step-index)))
    (take-in-at-ticks track now-ticks)))


