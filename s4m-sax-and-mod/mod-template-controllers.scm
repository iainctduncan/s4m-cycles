; template for making controllers
(post "mod-template-controllers.scm")

(define fire-grid-values (hash-table
  0  #( 0.0625 0.1616 0.125 0.333 0.5 0.666 0.75 1 1.5 2 2.5 3 4 5 6 8)  ; time stretches
  1  #(-7 -6 -5 -4 -3 -2 -1  0 1 2 3 4 5 6 7 8)    ; for transpose 
  2  #(-7 -6 -5 -4 -3 -2 -1  0 1 2 3 4 5 6 7 8)    ; for transpose 
  3  #(-7 -6 -5 -4 -3 -2 -1  0 1 2 3 4 5 6 7 8)    ; for inversions 
))

(define (make-improv-controller name . init-args)
  "live improv controller for the sax and modular rig"

  (let* ((active #t)       
         (debug #t)               ; for logging
         (seq-target #f)          ; the sequencer this controller sends to
         (ptrk 0)                 ; selected ptrk
                  ; settings hash-table, holds serializable settings
         (_  (hash-table
               :op  'loop-len     ; can be loop-len, loop-top, drop-take 
               :beat-offset 0     ; current sixteenth offset in beats for dropping in at time
         )))          

    ; set the active destination target
    (define (set-seq sequencer)
      (post "(improv-controller" name "setting dest to" (sequencer 'get 'name))
      (set! seq-target sequencer))

    (define (note-on note-num vel . args)
      ;(post "(improv-controller 'note-on" note-num vel)
      (if (> vel 0) (on-note-in note-num vel))
    ) 

    (define (note-off note-num vel)
      ;(post "(drum-controller 'note-off" note-num vel)
      '())
    
    (define (cc cc-num cc-val)
      ;(post "(improv-controller 'cc)" cc-num cc-val)
      (cond 
        ((and (= cc-num 64) (= cc-val 127)) ; pedal down
          (start-take))
        ((and (= cc-num 64) (= cc-val 0)) ; pedal up
          (end-take))
        (else
          (post "  unhandled cc" cc-num))))

    (define (fader num val)
      ;(post "(improv-controller::fader" num val)
      (let* ((seq-i (modulo num 4))
             (odds (floor (/ val 16))))  ;every 2 cols equals one track
        (if (>= num 4) 
          ; right faders set note odds
          (set-note-odds seq-i odds)
          ; left faders set amp multipl
          (set-amp-mult seq-i val))
      '()))

    (define (foot-left-btn btn-num)
      (post "(improv-controller::foot-left-btn" btn-num ") not yet implemented")
      )
    (define (foot-right-btn btn-num)
      (post "(improv-controller::foot-right-btn" btn-num ") not yet implemented")
      )
    (define (foot-grid-btn row col)
      ;(post "(improv-controller::foot-grid-btn row" row "col:" col ") not yet implemented")
      (let* ((seq-i (floor (/ (modulo col 8) 2))))  ;every 2 cols equals one track
        (set-note-odds seq-i row)))

    (define (left-btn btn-num)
      (post "(improv-controller 'left-btn" btn-num ")")
      (select-seq btn-num)
      (set! ($ :seq-i) btn-num)
      )

    (define (right-btn btn-num)
      "right buttons choose current operation"
      ;(post "(improv-controller 'right-btn" btn-num ")")
      (let* ((ops (hash-table
                    0  'set-loop-len
                    1  'set-loop-top
                    2  'drop-in
                    3  'drop-in-at
                    4  'take-in-now
                    5  'take-in-at
                    6  'track-die-off
                    7  'clear
                    ))
             (op (ops btn-num)))       
        (post "OPERATION:" op)
        (set! (_ :op) op)))

    ; note, gets reset to 0 after each use
    (define (bottom-btn btn-num)
      ;(post "(improv-controller 'bottom-btn" btn-num ")")
      ; did have it setting beat offset, not sure if that's actually useful
      ;(set! (_ :beat-offset) (/ btn-num 4))
      (set! ($ :note-reps) (if (= btn-num 0) #f (+ 1 btn-num)))
      (post "NOTE-REPS: " ($ :note-reps))
      )

    (define (grid-btn row col)
      "grid buttons execute the current operation"
      ;(post "(improv-controller 'grid-btn" row col ")")
      (cond 
        ((eq? (_ :op) 'drop-in-at)
          (drop-in-at row col (_ :beat-offset))
          (set! (_ :beat-offset) 0))
        (else
          (let ((op-fun (eval (_ :op))))
            (if op-fun (op-fun row col))
          '()))))

    (define (fire-grid row col)
      "fire buttons control the transformations"
      ;(post "(improv-controller 'fire-grid" row col ")")
      (let ((val (fire-grid-values row col)))
        (cond
          ((= row 0)
            (post "stretch to" val)
            (set! ($ :stretch) val))
          ((= row 1)
            (post "d-transpose to" val)
            (set! ($ :d-transpose) val))
          ((= row 2)
            (post "c-transpose to" val)
            (set! ($ :c-transpose) val))
          ((= row 3)
            (post "invert to" val)
            (set! ($ :invert) val))
       '())))

    (define (fire-btn num)
      (cond 
        ;((= num 33) 
        ;  (transform-take-buffer))  ; big browser button
        ((= num 31)                 ; top pattern button 
          (select-drop-in-source 'last-take))  
        ((= num 32)                 ; btm pattern button     
          (select-drop-in-source 'last-transform))  
        ((= num 34) ; fire arrow buttons
          (select-transform-direction 'backward))
        ((= num 35) ; fire arrow buttons
          (select-transform-direction 'forward))
        ((and (>= num 16) (<= num 19)) ; stupid knob buttons, shut em up
          '())
        (else (post "unhandled fire-btn" num)))
      '())  

    ; constructor logic, takes kwargs passed at constructor time
    (define (init init-args)
      (post "(improv-controller) 'init")
      ; call process-kwargs to setup kwarg settings
      (process-kwargs init-args)
      (export-envs name)       
    )
 
    ;********************************************************************************
    ;* My standard object implementation methods 

    ; save this let environment as 'env locally (used in getters and setters below)
    (define env (curlet))

    (define (log-debug . args)
      (if debug (apply post args)))
    
    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      (if (keyword? k) (_ k) (env k)))
      
    (define (set k v) 
      "set var in settings hash for keywords, local env otherwise"
      (if (keyword? k) (set! (_ k) v) (set! (env k) v)))

    ; loop through an arg list, stripping out kw/v pairs and applying them
    ; this allows setting state vars using k/v pairs in any method call
    (define (process-kwargs args)
      "filter kwargs arguments, setting in settings hash and removing from args"
      ;(post "process-kwargs" args)
      (let kwargs-loop ((args args))
        (cond 
          ((null? args) '())
          ((keyword? (car args))
            ; keywords go into the state dict
            (set! (_ (car args)) (cadr args))
            (kwargs-loop (cddr args)))
          (else 
              (cons (car args) (kwargs-loop (cdr args)))))))

    (define (export-envs name)
      "export this seqs env to rootlet for debugging/hacking"
      ; save env as {name}-env and {name-env_} in the global namespace
      (let ((env-name (string->symbol (string-append (symbol->string name) "-env")))
            (env-name_ (string->symbol (string-append (symbol->string name) "-env_"))))
        (varlet (rootlet) env-name env)
        (varlet (rootlet) env-name_ (env '_))
        (post "controller env exported as" env-name)))

         
    ; call the constructor
    (init init-args)

    ; object's message dispatcher
    (lambda args
      ;(log-debug "dispatch:" args)
      (let* ((msg (car args)) 
             (fun-args (cdr args))
             (no-process-funs (list 'get 'set))  ; list of methods that don't get kwarg processing
             (fun-args (if (member? msg no-process-funs) fun-args (process-kwargs fun-args))))
        (apply (eval msg) fun-args)))
)); end controller

(define improv-controller (make-improv-controller 'improv-controller))
  

