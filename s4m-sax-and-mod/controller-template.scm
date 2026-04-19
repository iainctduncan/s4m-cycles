; template for making controllers


(define (make-controller name . init-args)
  "template factory for a controller"
 
  (let* ((active #t)       
         (debug #t)               ; for logging
         (seq-target #f)          ; the sequencer this controller sends to
         (ptrk 0)                 ; selected ptrk
                  ; settings hash-table, holds serializable settings
         (_  (hash-table)))          

    ; set the active destination target
    (define (set-seq sequencer)
      (post "(controller" name "setting dest to" (sequencer 'get 'name))
      (set! seq-target sequencer))

    (define (note-on note-num vel . args)
      (post "(controller 'note-on" note-num vel)
    ) 

    (define (note-off note-num vel)
      ;(post "(drum-controller 'note-off" note-num vel)
      '())
    
    (define (cc cc-num cc-val)
      (post "(controller 'cc)" cc-num cc-val))

    (define (left-btn btn-num)
      (post "(controller 'left-btn" btn-num ")"))

    (define (right-btn btn-num)
      (post "(controller 'right-btn" btn-num ")"))

    (define (bottom-btn btn-num)
      (post "(controller 'bottom-btn" btn-num ")"))

    (define (grid-btn row col)
      (post "(controller 'grid-btn" row col ")"))
         

    ; constructor logic, takes kwargs passed at constructor time
    (define (init init-args)
      (post "controller init")
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


  

