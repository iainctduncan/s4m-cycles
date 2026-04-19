;; trigger seq cv
;; stores notes as onsets only in a sparse hash-table
(post "s4m-bell-trigger-seq-cv.scm - sequence for live triggered percussive notes")
(load-from-max "helpers.scm")
(load-from-max "music-helpers.scm")


; global count of Max clock objs
(define *clocks* 0)

; hash-table for top level configuration shared across all seqs
;(define g (hash-table
;  :note-reps 4
;  :dur 120
;))

; note data obj accepts optional attrs ht argument
(define (n% note-num amp dur-ticks . args)
  ;(post "note constructor n%" note-num amp dur-ticks args)
  (let* ((attrs (if (null? args) (hash-table) (args 0)))
         (amp  (if (> amp 1) (/ amp 127) amp))
         (note-ht (hash-table 
           :pitch note-num 
           :amp amp 
           :dur dur-ticks)))
    (for-each (lambda (kv)(set! (note-ht (car kv)) (cdr kv))) attrs)
    note-ht))

(define (make-trigger-seq-cv name . init-args)

  (let ((playing? #f)             ; flag for if on or not (regardless of how clocked) 
        (delay-handle #f)         ; handle for self-scheduling
        (start-delay-handle #f)   ; handle for delayed starts
        (step-index 0)            ; a step is really a few ticks
        (gate-off-handle #f)      ; the delay handle for the last gate off 
        (gate-obj #f)
        (process-reg (hash-table)); registry for injected process functions 
        ; settings hash-table, holds serializable settings
        ; populating with basic seq stuff for now, even though it's unlikely to be used
        (state  (hash-table         
          :name           name
          :channel        1     
          :step-dur       1     ; lock it at 1 for now
          :loop-len       8      ; loop length in beats (beat = 480 maxppq)
          :dur            120    ; default note out duration in 480 ppq
          :base-octave    5
          :amp           0      ; base amp, 0 to 1    
          :amp-unit      .1 
          :amp-slop      .0     ; how much amp is randomized on each step
          :amp-mult      1.0    ; for dynamic amp scaling from faders 
          :onset-slop    0      ; slop in ms for onset times
          :unmuted        1     ; does it play  
          :out-format     :cv   ; can be :cps or :cv 
          :frq-outs       '()   ; list of destinations to send frequency
          :seq-data     (hash-table)    ; data, indexed by ticks
          :delay         0
          :time-radius   90     ; notes wipe out neighbours in this radius 
          :erasing       #f
          :odds          7      ; prob from 0 to 7 over 7
          :odds-denom    7      ; denominator
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
        (apply fun (list state proc-ht))
        (set! (proc-ht :iter) (+ 1 i))
        ; end if at max reps, or process marked done, or until pred
        (if (or 
                (and (proc-ht :reps) (>= i (proc-ht :reps))) 
                (proc-ht :done)
                (if until? 
                  (apply until? (list state))
                  #f))  
          (cancel-process handle))))        

    ; todo: allow aliases for attribute typing convenience
    (define (alias k1 k2)
      '())

    (define env (curlet))

    ; send to the gate max object, configured at init time
    (define (send-gate g-val)
      ;(post "send-gate" (state :chan) g-val)
      (send gate-obj g-val))

    (define (midi->cv note-num)
      ;(post "(midi->cv) note-num:" note-num)
      ; TODO prob need a dynamic offset here?
      (let* ((oct (- (/ note-num 12.0) (state :base-octave)))
             (cv  (* oct 0.1)))
        cv))

    (define (midi->cps note-num)
       (* 440 (expt 2 (/ (- note-num 69) 12.0))))

    ; standard tuning version of pitch out for the modular max patch
    ; pitch is midi num 
    ; TODO: allow symbolic pitches too
    ; also sends messages to Max/csound oscillators, all objs in :frq-outs
    (define (note-out chan pitch amp dur)
      ;(post "note-out:" chan pitch amp dur)
      (let* ((note-num pitch) ; later, allow symbolic input to pitch arg too
             (pitch-cv (midi->cv note-num))
             (pitch-cps (midi->cps note-num))
             (amp (* amp (state :amp-mult)))
             )
        ;(post "  - pitch-cv:" pitch-cv "pitch-cps:" pitch-cps "amp:" amp)
        ;(post "(note-out) - pitch-cv:" pitch-cv)
        ; only send out notes above note num 0
        (if (> note-num 0)
          (let ((onset-delay  (/ (random (* 1000 (state :onset-slop))) 1000.0))
                ; TODO: bring this back for csound output instruments
                (pitch-out (if (eq? (state :out-format) :cv) pitch-cv pitch-cps)))
            ;(post "output:" onset-delay chan pitch amp dur)
            (delay onset-delay (lambda()
              ; note playing logic
              ; cancel previous gate-off & schedule gate off for this note
              (cancel-delay gate-off-handle)
              (delay-t dur (lambda () (send-gate 0)))
              ; not sure if matters which happens first?
              (send-gate 1)
              (dolist (dest (state :frq-outs)) (send dest pitch-cps))
              (out 0 (list chan pitch-out))
              (out 1 (list chan amp))
              ; outlet 2 sends to hybrid synths, frq, amp, dur-in-ticks
              (out 2 (list chan pitch-cps amp dur))))))
      ))

    ; tick handler that does step logic, this is what gets scheduled
    ; in this version, a step is very short, (state :step-dur) ticks
    (define (run-step)
      ;(post "trigger-seq (run-step) tick: " step-index)
      ; only call play step if there is anything there
      (let ((note (state :seq-data step-index)))
        (cond 
          ; in replace mode, if there is a note, and its not from the current take, erase it
          ((and note (state :erasing) (not (= (note :take) ($ :take-id))))
            (set! (state :seq-data step-index) #f))
          (note 
            ;(post "  - on tick" step-index "found note:" note)
            ; check odds of note playing, note this is independent of reps
            (if (test-odds (state :odds) (state :odds-denom))
              ; assuming the odds pass, play the note
              (note-out (state :channel) (note :pitch) (note :amp) (note :dur)))
            ; adjust notes reps count, erase after playing if on last rep
            (cond 
              ; note has reps and note yet last, decrement
              ((and (note :reps) (> (note :reps) 1))
                (set! (note :reps) (- (note :reps) 1)))
              ; note has reps and was on last (rep 1), wipe from seq
              ((and (note :reps) (<= (note :reps) 1))
                (set! (state :seq-data step-index) #f)))
              ; else, note reps was false, nothing to do  
            ))
        ; increment step-index
        (let ((loop-len-ticks (* (state :loop-len) 480)))
          (inc! step-index)
          (if (>= step-index loop-len-ticks)
            (set! step-index (modulo step-index loop-len-ticks))))
        ; if we are passed the loop-len now, modulo back

        ;(post "step-index" step-index)
        '()
      )); end run-step
   
    ; add a note to the sequence at a tick time, removing previous by the blast radius
    (define (add-note-at at-index n)
      ;(post "(add-note-at)" at-index n)
      (let* ((at-tick at-index)
             ; XXX: clean this up
             (note (n% (n :note-num) (n :vel) (n :dur) n)))
        ; add reps and dur from state if none sent
        (if (not (note :reps)) (set! (note :reps) ($ :note-reps)))
        (if (not (note :dur)) (set! (note :dur) (state :dur)))
        ;(post "(add-note-at) seq:" name "at tick:" at-tick "note" note) 
        (wipe at-tick)
        ; this will wipe out any note at the same tick
        ; todo: add blast radius for wiping out
        (set! (state :seq-data at-tick) note))
        ;(post "  - seq data now:" (state :seq-data))
        )

    ; add a note to the sequence, removing previous by the blast radius
    (define (add-note note) 
      ;(post "(add-note)" note)
      (let* ((at-tick step-index)) ; get seqs time at function call 
        (add-note-at at-tick note)))
       
    ; play-note is used to play a note through a seq when it has not been recorded
    ; ie, outside of a take
    (define (play-note note-num vel dur)
      (note-out (state :channel) note-num vel dur))

    (define (wipe . args)
      ; wipe previous notes, handling wrapping around 0 or loop-len-ticks
      ; if called with no step index, wipes at current time
      (let* ((at-step (if (null? args) step-index (args 0)))
             (radius (state :time-radius))
             (radius-start (- at-step (/ radius 2)))
             (loop-len-ticks (* 480 (state :loop-len))))
        (dotimes (i radius)
          (let* ((step (+ radius-start i))  
                 (step-w (if (< step 0) (+ step loop-len-ticks) (modulo step loop-len-ticks))))
            (set! (state :seq-data step-w) #f)))))

    (define (clear)
      (post "trigger-seq (clear)")
      (set! (state :seq-data) (hash-table)))

    (define (get-amp amp-index)
      "calculate output amp from a step-amp"
      (let* ((step-amp (if (> (length (state :amp-seq)) 0)
                         ; if there is a amp seq, use, else base amp
                         (seq-read (state :amp-seq) amp-index)
                         (state :amp)))
             (amp   (+ (state :amp) (* step-amp (state :amp-unit))))
             (amp   (+ amp (random (state :amp-slop)))))
        (cond 
          ((> amp 1.0)   1.0)
          ((< amp 0)     0.0)
          (else          amp))))

    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      ;(post "(get k) k:" k)
      (if (keyword? k) (state k) (env k)))
    
    ; old non recursive version
    ;(define (set k v) 
    ;  "set var in settings hash for keywords, local env otherwise"
    ;  (if (keyword? k) (set! (state k) v) (set! (env k) v)))

    (define (set . args) 
      "set var in settings hash for keywords, local env otherwise"
      (let* looptop ((arglist args) (k (arglist 0)) (v (arglist 1)))
        (if (keyword? k) (set! (state k) v) (set! (env k) v))
          (if (> (length arglist) 2)
            (looptop (cddr arglist)))))

    ; cancel next scheduled iteration and stop playback
    (define (stop)
      (post "stopping seq" name)
      (cancel-delay delay-handle)
      (cancel-delay start-delay-handle)
      (set! playing? #f))

    (define (start)
      (post "trigger-seq (start)" (state :name))
      (if (> (state :delay) 0)
        (set! start-delay-handle 
          (delay-t (state :delay) _start))
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
            (set! (state (car args)) (cadr args))
            (kwargs-loop (cddr args)))
          (else 
              (cons (car args) (kwargs-loop (cdr args)))))))

    (define (export-envs name)
      "export this seqs env to rootlet for debugging/hacking"
      ; save env as {name}-env and {name-envstate} in the global namespace
      (let ((env-name (string->symbol (string-append (symbol->string name) "-env")))
            (env-namestate (string->symbol (string-append (symbol->string name) "-envstate"))))
        (varlet (rootlet) env-name env)
        (varlet (rootlet) env-namestate (env 'state))
        ;(post "step-seq env exported as" env-name)
    ))

    ; constructor logic
    (define (init init-args)
      "constructor, sets up values and initializes sequencer"
      ; call process-kwargs to setup kwarg settings
      (process-kwargs init-args)
      ; if initial seq data not passed in as constructor arg, make it
      ;(if (not (state :seq-data))   (init-seq-data (state :params) (state :steps)))
      ;(if (not (state :beat-seq)) (init-beat-seq))
      ; init loop-len and loop-top to num steps if not set in constructor
      (if (not (state :loop-len)) (set! (state :loop-len) (state :steps)))
      
      (set! gate-obj (symbol-append 'es5- (symbol (number->string (state :channel)))))

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

