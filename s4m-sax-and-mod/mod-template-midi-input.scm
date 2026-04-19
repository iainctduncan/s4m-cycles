(post "mod-template-midi-input")

(load-from-max "midi-devices.scm")

; version of the midi-input handling from s4m-live-code for the sax & modular rig
; uses the generic input device setup and handling in midi-devices
; this file is where we set what happens in different modes and pass those messages to controllers

; helper to get a controller object from its name 
; assumes there exists a variable of instantiated controller, named {mode-name}-controller
; TODO: prob better to change this to a registry look up later
(define (get-controller mode-name)
  ;(post "get-controller" mode-name)
  (let* ((controller-name (string-append (symbol->string mode-name) "-controller"))
         (controller (eval-string controller-name)))
    controller)) 
    

;* MAX FUNCTION: midi-in
;* handles incoming midi messages, with device symbol prepended by Max
;* this is called from patcher, using the midi-devices sub-patch
;* looks for device specific parser functions and calls them if they exist
;* this depends on access to the meta object
;* and, by necessity, depends on controllers being active, because it has to route to them
(define (midi-in device . data-bytes)
  ;(post "midi-in" device data-bytes)
  (let* ((m (parse-midi data-bytes))
         ; call device parser, which may add :action, ie :action 'grid-btn
         (m (parse-input-for-device device m))
         ; XXX in s4m-live-code this comes from the meta controller
         (mode ($ :mode))
         )
    ; debug output 
    ;(if (and (m :msg) (not (eq? (m :msg) 'note-off)) (not (eq? (m :vel) 0))) 
    ;  (post "(midi-in) device:" device " input:" m))
    ;(post "(midi-in) device:" device " input:" m)
   
    ; branching by mode and device here 
    ; the case statements sets handled-by-mode to a truthy value if handled or #f if not
    ; this allows input streams to be optionally grabbed by a mode, or passed on to global
    ; handling at the bottom
    (define handled-by-mode
      (case mode 
        ;('name   ; MODE MAP TEMPLATE example
        ;  (cond 
        ;    ((eq? device 'keystep)
        ;      (cond 
        ;        ((eq? (m :msg) 'note-on)
        ;          ((get-controller 'arp) 'note-on (m :note) (m :vel)))
        ;        ; add other arp mode mappings to the controller functions here
        ;        (else #f)))
        ;    (else #f)) ; must return false to have message bubble be handled globally
        ;  );end mode mode 
        ('improv   
          (cond 
            ((eq? device 'keystep) 
              (cond 
                ((eq? (m :msg) 'note-on)
                  ((get-controller 'improv) 'note-on (m :note) (m :vel)))
                ((eq? (m :msg) 'cc)
                  ((get-controller 'improv) 'cc (m :cc-num) (m :cc-val)))
                ; add other arp mode mappings to the controller functions here
                (else #f)))
            ((eq? device 'bcf-1) 
              (cond 
                ((eq? (m :action) 'fader)
                  ((get-controller 'improv) 'fader (m :cc-num) (m :cc-val)))
                (else #f)))
            ;((eq? device 'keystep-2)
            ;  (cond 
            ;    ((eq? (m :msg) 'note-on)
            ;      ; normalize the keysteps to each because mini is set an octave lower for some reason
            ;      ((get-controller 'improv) 'note-on-2 (+ 12 (m :note)) (m :vel)))
            ;    ; add other arp mode mappings to the controller functions here
            ;    (else #f)))
            ((eq? device 'fire)
              (cond 
                ; green fire meta buttons set grid submode
                ((eq? (m :action) 'grid-btn)
                  ;((get-controller 'improv) 'set-grid-mode (m :btn)))
                  ;(post "- fire grid button" (m :row) (m :col))
                  ((get-controller 'improv) 'fire-grid (m :row) (m :col))
                  )
                ((eq? (m :msg) 'note-on)
                  ((get-controller 'improv) 'fire-btn (m :note)))
                ; fire upper right "grid" buttons set bars or steps
                (else 
                  ;(post "unhandled fire msg:" m)
                  #f)))
            ((or (eq? device 'fpad-1) (eq? device 'fpad-2))
              (cond
                ((eq? (m :action) 'grid-btn)
                  ((get-controller 'improv) 'foot-grid-btn (m :row) (m :col)))
                ((eq? (m :action) 'left-btn)
                  ((get-controller 'improv) 'foot-left-btn (m :btn)))
                ((eq? (m :action) 'right-btn)
                  ((get-controller 'improv) 'foot-right-btn (m :btn)))
                ((eq? (m :action) 'top-btn)
                  ((get-controller 'improv) 'foot-top-btn (m :btn)))
              ))
            ((or (eq? device 'pad-1) (eq? device 'pad-2))
              (cond
                ((eq? (m :action) 'grid-btn)
                  ((get-controller 'improv) 'grid-btn (m :row) (m :col)))
                ((eq? (m :action) 'left-btn)
                  ((get-controller 'improv) 'left-btn (m :btn)))
                ((eq? (m :action) 'right-btn)
                  ((get-controller 'improv) 'right-btn (m :btn)))
                ((eq? (m :action) 'bottom-btn)
                  ((get-controller 'improv) 'bottom-btn (m :btn)))
              ))
            (else #f)) ; must return false to have message bubble up to meta
        );end perform mode 

        ; other mode mappings here
        ; ...
        (else #f)); end case mode
    ); end mode branch

    ; non-modal meta routings - handles global messages (track, bank, bar, etc)
    ;(post "  - msg now: " m)
    ; handled-by-mode will be #f if the msg was not caught by a case above
    (if (not handled-by-mode)
      (begin
        ;(if (and (not-eq? (m :msg) 'note-off) (not-eq? (m :cc-num) 123))
        ;  (post "msg not handled by mode:" m))
        (cond
          ((eq? device 'fire)
            (cond 
              ; fire upper right "grid" buttons set bars or steps
              ((and (eq? (m :msg) 'note-on) (eq? (m :note) 34))
                (post "fire-grid button, not implemented"))
              ((and (eq? (m :msg) 'note-on) (eq? (m :note) 35))
                (post "fire-grid button, not implemented"))
              ))
        )
        ; this is fucked up, it's firing on non fire input
        ;(case (m :action) 
        ;  ('grid-btn  
        ;    ;(meta 'grid-btn (m :row) (m :col)))
        ;    (post "fire grid-btn row:" (m :row) "col:" (m :col)))
        ;  ('mode-btn
        ;    ;(meta 'mode-btn (m :btn)))
        ;    (post "fire bottom mode btn" (m :btn)))
        ;)
        )); end non-modal handling
))

