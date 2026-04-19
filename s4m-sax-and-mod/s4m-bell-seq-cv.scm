;; bell pattern sequencer
;; based on the just intonation CV bell seq, but without the JI tuning
(post "s4m-bell-seq-cv.scm - standard tuning bell seq")
(load-from-max "helpers.scm")
(load-from-max "ji-helpers.scm")
(load-from-max "bell-seq-helpers.scm")
(load-from-max "music-helpers.scm")

; this version adds processes, examp:
; (define (proc-1 $ self)
;   (post "(PROC-1), $:" $ "conf:" self)
;   (post "attempt to get at s1, posting ref-cps:" (s1 'get :ref-cps) ($ :ref-cps) )
;   ; mark self as done
;   (set! (self :done) #t)
;   )
; 
;(s1 'add-process proc-1 (hash-table :reps 4 :until (lambda ()(= 2 1))) 'p1)

; would be great if it could just be a quoted statement!

(define (do-odds odds-list fun)
  "exec fun on an a num in denom odds"
  (let* ((numer (odds-list 0))
         (denom (odds-list 1))
         (i (random denom)))
    (if (< i numer) (fun))
    '()))

(define (make-bell-seq-cv name . init-args)

  (let ((playing? #f)             ; flag for if on or not (regardless of how clocked) 
        (delay-handle #f)         ; handle for self-scheduling
        (start-delay-handle #f)   ; handle for delayed starts
        (beat-index 0)            ; beat index within the beat-seq vector
        (step-index 0)            ; step index within full pattern, where step is the small unit
        (pitch-index 0)
        (amp-index 0)
        (gate-off-handle #f)      ; the delay handle for the last gate off 
        (gate-obj #f)
        (process-reg (hash-table)) ; registry for injected process functions 
        ; settings hash-table, holds serializable settings
        ; populating with basic seq stuff for now, even though it's unlikely to be used
        ($  (hash-table         
          :name           name
          :channel        1     
          :step-dur       120   ; duration of the short step (a 12/8 8th in standard bell pattern
          :dur           120    ; actual note duration
          :beat-seq      #f     ; vector of beat durs in steps: standard bell = [2 2 1 2 2 2 1]   
          :pitch-seq     #f     ; vector of pitch factors     
          :change-seq    '(1)   ; vector of which beats make a pitch change, when pitch-change = seq
          :amp-seq       #()    ; vector of relative ampocities
          :amp           0      ; base amp, 0 to 1    
          :amp-unit      .1 
          :amp-slop      .0     ; how much amp is randomized on each step
          :onset-slop    0      ; slop in ms for onset times
          :pitch-change  :all ; can be pre, post, both, every, none, or seq
          :change-prob    1     ; chance of a pitch index change happening, 1 = always, 2 = 50% etc
          :change-on-dur  1     ; beat duration that triggers a change
          :time-factor    1     ; a multipler for the sequencers conception of time
          :unmuted        1     ; does it play  
          :delay          0     ; ticks of delay before starting
          :ref-cps        13.75 ; frequency we are calling ref volts (normally 0)
          :ref-cv         0.0   ; cv value for the ref-cps
          :ref-midi-note  33    ; midi note num for the ref pitch
          :out-format     :cv   ; can be :cps or :cv 
          :frq-outs       '()   ; list of destinations to send frequency
          ; stuff for the randomization
          :pitch-index-spread 0
          :extra-note-odds  '(0 1)
          :extra-retrig-odds '(1 2)
          :del-mults      '(1/2 1 3/2 2)
          )))          
   

    (define (add-process func config . args)
      (let* ((handle (if (> (length args) 0) (args 0) (gensym) ))
             (conf-ht (copy config)))
        (post "adding-process as" handle)
        (set! (conf-ht :fun) func)
        (set! (conf-ht :iter) 0)  ; count of executions
        (set! (process-reg handle) conf-ht))) 

    (define (cancel-process handle)
      (post "(cancel-process)" handle)
      (set! (process-reg handle) #f))

    (define (proc-peek)
      (post "process registry:" process-reg))
    
    (define (run-processes)
      ;(post "(run-processes)")
      (for-each 
        (lambda (p)(exec-process (car p) (cdr p)))
        process-reg))

    (define (exec-process handle proc-ht)
      ;(post "(exec-process)" handle proc-ht)
      (let* ((fun    (proc-ht :fun))
             (i      (proc-ht :iter))
             (until? (proc-ht :until)))
        ;(post "  - fun to apply:" fun)
        ; call the process function, passing in seq state and process state
        (apply fun (list $ proc-ht))
        (set! (proc-ht :iter) (+ 1 i))
        ; end if at max reps, or process marked done, or until pred
        (if (or 
                (and (proc-ht :reps) (>= i (proc-ht :reps))) 
                (proc-ht :done)
                (if until? 
                  (apply until? (list $))
                  #f))  
          (cancel-process handle))))        

    ; todo: allow aliases for attribute typing convenience
    (define (alias k1 k2)
      '())

    (define env (curlet))

    (define (send-gate g-val)
      ;(post "send-gate" ($ :chan) g-val)
      (send gate-obj g-val))

    (define (cps->cv cps)
      "convert cps to cv, assuming base-cv and base-cps"
      ;(post "(cps-cv) cps:" cps "ref-cps" ($ :ref-cps))
      (let* ((ref-cps ($ :ref-cps))  ; the reference freq we are using for 0 volts
             (oct-diff (log (/ cps ref-cps) 2))  ; num octaves from our ref freq
             (cv-out  (+ ($ :ref-cv) (* oct-diff 0.1))))
        ;(post "cps:" cps "ref-cps:" ref-cps "oct diff:" oct-diff "cv-out:" cv-out)
        cv-out))    

    (define (midi->cv note-num)
      ;(post "(midi->cv) note-num:" note-num)
      ; TODO prob need a dynamic offset here?
      (let* ((oct (- (/ note-num 12.0) 5))
             (cv  (* oct 0.1)))
        ;(post "  - cv: " cv)
        cv))

    (define (midi->cps note-num)
       (* 440 (expt 2 (/ (- note-num 69) 12.0))))

    ; given a ratio, return semi-tones and pbu for playing with midi
    ; pbu is a number from -8912 to +8192
    (define (ratio->midi ratio)
      ;(post "ratio->midi, ratio" ratio)
      (let* ( (pitch-in-cents (* 1200 (log ratio 2)))
              ;(_ (post "pitch-in-cents:" pitch-in-cents))
              (semi-tones (floor (/ pitch-in-cents 100)))
              (bend-cents (modulo pitch-in-cents 100))
              (midi-bend-units (round (* bend-cents 40.96))))
        ; return semitones plus midi pitch bend value
        ;(post "ratio->midi ratio:" ratio "semi-tones:" semi-tones "pbu" midi-bend-units)
        (cons semi-tones midi-bend-units)))

    ; standard tuning version of pitch out
    ; pitch is midi num 
    ; TODO: allow symbolic pitches too
    ; also sends messages to Max/csound oscillators, all objs in :frq-outs
    (define (note-out chan pitch amp dur)
      ;(post "note-out:" chan pitch amp dur)
      (let* ((note-num pitch) ; later, allow symbolic input to pitch arg too
             (pitch-cv (midi->cv note-num))
             (pitch-cps (midi->cps note-num))
             )
        ;(post "  - pitch-cv:" pitch-cv "pitch-cps:" pitch-cps "amp:" amp)
        (post "(note-out) - pitch-cv:" pitch-cv)
        ; only send out notes above note num 0
        (if (> note-num 0)
          (let ((onset-delay  (/ (random (* 1000 ($ :onset-slop))) 1000.0))
                ; TODO: bring this back for csound output instruments
                (pitch-out (if (eq? ($ :out-format) :cv) pitch-cv pitch-cps)))
            ;(post "output:" onset-delay chan pitch amp dur)
            (delay onset-delay (lambda()
              ; note playing logic
              ; cancel previous gate-off & schedule gate off for this note
              (cancel-delay gate-off-handle)
              (delay-t dur (lambda () (send-gate 0)))
              ; not sure if matters which happens first?
              (send-gate 1)
              (dolist (dest ($ :frq-outs)) (send dest pitch-cps))
              (out 0 (list chan pitch-out))
              (out 1 (list chan amp))
              ; outlet 2 sends to hybrid synths, frq, amp, dur-in-ticks
              (out 2 (list chan pitch-cps amp dur))))))
      ))

    ; version with randomization of i
    ; offsets the index by randomization by :pitch-index-spread
    ;(define (seq-read seq index)
    ;  "read an element from a sequence, allowing wrapping"
    ;  ;(post "seq-read")
    ;  (let* ((seq-len (length seq))
    ;         (i-max   (- seq-len 1))
    ;         (i-spread (random (+ 1 ($ :pitch-index-spread))))
    ;         (index (+ index i-spread)) 
    ;         ;(_ (post "index:" index))
    ;         (i       (if (> index i-max) (modulo index i-max) index)))
    ;    (seq i)))       

    (define (seq-read seq index)
      "safe reading from a seq, wraps if out of bounds"
      (let* ((i-spread (random (+ 1 ($ :pitch-index-spread))))
             (index (+ index i-spread)))
        (if (> (length seq) index)
          (seq index)
          ; else wrap
          (seq (modulo index (length seq))))))

    (define (trigger-extra-note)
      ;(post "trigger-extra-note")
      (let* ((del-mult (random-choice ($ :del-mults)))
             (del-ticks (* ($ :step-dur) del-mult)))
        (delay-t del-ticks play-step))
        (do-odds ($ :extra-retrig-odds) trigger-extra-note)
        '())

    ; step handler that does step logic, this is what gets scheduled
    (define (run-step)
      ;(post "(run-step)")
      ; call play-step with current step-index
      (let* ((beat-dur ($ :beat-seq beat-index)))
        ; now play, will have access to ($ :beat-dur) 
        (set! ($ :beat-dur) beat-dur)
        (play-step)
        ; IN PROG experiment to try triggering multiple notes per beat
        (do-odds ($ :extra-note-odds) trigger-extra-note)

        ; update step counters, inc-to automatically rolls over to zero
        (inc-to! beat-index (length ($ :beat-seq))) 
        (inc-to! amp-index (length ($ :amp-seq))) 
        ; schedule next step if playing 
        (if playing? 
          (let ((delay-dur (* beat-dur ($ :step-dur))))
            (set! delay-handle (delay-t delay-dur run-step)))))
    ); end run-step

    (define (play-step)
      ;(post "(play-step) beat-dur: " ($ :beat-dur) "beat index:" beat-index)
      ;(post "  pitch-seq:" ($ :pitch-seq))
      ; if we are on a short beat and pitch-change is pre, flip
      ;(if (and (= ($ :beat-dur) ($ :change-on-dur)) 
      (if (and (eq? ($ :beat-dur) ($ :change-on-dur)) 
            (member? ($ :pitch-change) '(:pre :both)))
        (inc-pitch-index))

      ; runprocs here so can change data prior to look up
      (run-processes)

      ; get actual values for step and pass to note out
      (let* ((pitch (seq-read ($ :pitch-seq) pitch-index))
             (amp  (get-amp amp-index))
             (dur  ($ :dur)))
        ;(post "  - play step out: " pitch amp dur)
        (if (and (= 1 ($ :unmuted)) (> amp 0.0))
          (note-out ($ :channel) pitch amp dur)))

      (if (and (eq? ($ :pitch-change) :seq)
               (= 1 (seq-read ($ :change-seq) beat-index)))
        (inc-pitch-index))         

      (if (or
            (eq? ($ :pitch-change) :all)
            (and (= ($ :beat-dur) ($ :change-on-dur)) 
              (member? ($ :pitch-change) '(:post :both))))
        (inc-pitch-index))
    ); end play-step

    (define (get-amp amp-index)
      "calculate output ampocity from a step-amp"
      (let* ((step-amp (if (> (length ($ :amp-seq)) 0)
                         ; if there is a amp seq, use, else base amp
                         (seq-read ($ :amp-seq) amp-index)
                         ($ :amp)))
             (amp   (+ ($ :amp) (* step-amp ($ :amp-unit))))
             (amp   (+ amp (random ($ :amp-slop)))))
        (cond 
          ((> amp 1.0)   1.0)
          ((< amp 0)     0.0)
          (else          amp))))

    (define (inc-pitch-index)
      (if (= 0 (random ($ :change-prob)))
        (inc-to! pitch-index (length ($ :pitch-seq)))))

    (define (steps-in-cycle)
      "return the total number of beat steps in the beat cycle"
      (apply + (vector->list ($ :beat-seq))))

    ; some aliases
    (define (p seq)
      (set! ($ :pitch-seq) seq))

    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      ;(post "(get k) k:" k)
      (if (keyword? k) ($ k) (env k)))
    
    ; old non recursive version
    ;(define (set k v) 
    ;  "set var in settings hash for keywords, local env otherwise"
    ;  (if (keyword? k) (set! ($ k) v) (set! (env k) v)))

    (define (set . args) 
      "set var in settings hash for keywords, local env otherwise"
      (let* looptop ((arglist args) (k (arglist 0)) (v (arglist 1)))
        (if (keyword? k) (set! ($ k) v) (set! (env k) v))
          (if (> (length arglist) 2)
            (looptop (cddr arglist)))))

    ; cancel next scheduled iteration and stop playback
    (define (stop)
      (post "stopping seq" name)
      (cancel-delay delay-handle)
      (cancel-delay start-delay-handle)
      (set! playing? #f))

    (define (start)
      (if (> ($ :delay) 0)
        (set! start-delay-handle 
          (delay-t ($ :delay) _start))
        ; else just start
        (_start)))

    ; reset state to beginning and start playback
    (define (_start)
      (reset)
      (set! playing? #t)
      (run-step))

    (define (reset)
      (cancel-delay delay-handle)
      (set! step-index 0))
 
    ; loop through arg list, stripping out kw/v pairs and applying them
    ; this allows setting state vars using k/v pairs in any method call
    (define (process-kwargs args)
      "filter kwargs arguments, setting in settings hash and removing from args"
      ;(post "process-kwargs" args)
      (let kwargs-loop ((args args))
        (cond 
          ((null? args) '())
          ((keyword? (car args))
            ; keywords go into the state dict
            (set! ($ (car args)) (cadr args))
            (kwargs-loop (cddr args)))
          (else 
              (cons (car args) (kwargs-loop (cdr args)))))))

    (define (export-envs name)
      "export this seqs env to rootlet for debugging/hacking"
      ; save env as {name}-env and {name-env$} in the global namespace
      (let ((env-name (string->symbol (string-append (symbol->string name) "-env")))
            (env-name$ (string->symbol (string-append (symbol->string name) "-env$"))))
        (varlet (rootlet) env-name env)
        (varlet (rootlet) env-name$ (env '$))
        ;(post "step-seq env exported as" env-name)
    ))

    ; constructor logic
    (define (init init-args)
      "constructor, sets up values and initializes sequencer"
      ; call process-kwargs to setup kwarg settings
      (process-kwargs init-args)
      ; if initial seq data not passed in as constructor arg, make it
      ;(if (not ($ :seq-data))   (init-seq-data ($ :params) ($ :steps)))
      ;(if (not ($ :beat-seq)) (init-beat-seq))
      ; init loop-len and loop-top to num steps if not set in constructor
      (if (not ($ :loop-len)) (set! ($ :loop-len) ($ :steps)))
      
      (set! gate-obj (symbol-append 'es5- (symbol (number->string ($ :channel)))))

      (export-envs name)       
    )
     
    ; call the constructor
    (init init-args)

    (lambda args
      "message dispatcher"
      ;(log-debug "dispatch:" args)
      (let* ((msg (car args)) 
             (fun-args (cdr args))
             ; list of methods that don't get kwarg processing
             (no-process-funs '(get set add-process cancel-process))  
             ;(no-process-funs '(get))  ; list of methods that don't get kwarg processing
             (fun-args (if (member? msg no-process-funs) fun-args (process-kwargs fun-args))))
        (apply (eval msg) fun-args)))
     
)); end main let and define

