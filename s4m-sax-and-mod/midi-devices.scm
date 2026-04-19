(post "midi-devices.scm")
; these functions handle the midi input from my setup of two keysteps,
; two launchpad minis, and the fire, turning them into generic functional messages
; this file should be reusable across rigs without alteration
; (i.e., used in both s4m-live-code and sax-modular

; helper function to parse from generic midi into a generic hashtable
; representing a midi msg with key'd values: :msg :chan: :note :vel :cc-num :cc-val
(define (parse-midi data-bytes)
  ;(post "parse-midi" data-bytes)
  (let* ((data-1 (data-bytes 0))
         (data-2 (data-bytes 1))
         ; note: aftertouch messages are missing data byte 3
         (data-3 (if (= (length data-bytes) 3) (data-bytes 2) #f))  
         (msg (cond 
                  ((and (>= data-1 128) (< data-1 144)) 'note-off)
                  ((and (>= data-1 144) (< data-1 160)) 'note-on)
                  ((and (>= data-1 176) (< data-1 192)) 'cc)
                  ((and (>= data-1 224) (< data-1 240)) 'bend)
                  ; todo: program 
                  (else #f)))
         (chan   (modulo data-1 16))
         (note   (if (or (eq? msg 'note-on) (eq? msg 'note-off)) data-2 #f))
         (vel    (if (or (eq? msg 'note-on) (eq? msg 'note-off)) data-3 #f))
         (cc-num (if (eq? msg 'cc) data-2 #f)) 
         (cc-val (if (eq? msg 'cc) data-3 #f))
         (bend-l (if (eq? msg 'bend) data-3 #f))
         )
    ; return the generic hash-table for an input msg
    (hash-table :msg msg :chan chan :note note :vel vel 
      :cc-num cc-num :cc-val cc-val :bend-l bend-l)))  


; top level dispatcher for parsing input from hardware devices
; looks for appropriately named device input parser function, ie. parse-input-pad-1 
; if found, this is called to alter or augment the input hash
; also adds the source device name to the msg hashtable
(define (parse-input-for-device device-name in-ht)
  (let* ((device-parser-fun-sym (symbol (string-append "parse-input-" (symbol->string device-name))))
        (device-parser-fun (if (defined? device-parser-fun-sym) (eval device-parser-fun-sym) #f)))
    ; add the device source to the msg hash
    (set! (in-ht :source) device-name)
    ; either parse and return the hash or just return hash as is
    ;(post "parse-input-for-device" device-parser-fun-sym device-parser-fun)
    (if device-parser-fun (device-parser-fun in-ht) in-ht)
    
))


; parse midi input from the left launchpad mini that is upside down
(define (parse-input-pad-1 msg-ht)
  ;(post "(parse-input-pad-1)")
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    ; helper for reversing midi note number lookup    
    (define (invert-0-7 num) (#(7 6 5 4 3 2 1 0) num))

    (case msg
      ('note-on
        (cond 
          ((and (<= note 119) (>= note 112) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 0  :col (invert-0-7 (- note 112))))
          ((and (<= note 103) (>= note 96) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 1  :col (invert-0-7 (- note 96))))
          ((and (<= note 87)  (>= note 80) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 2  :col (invert-0-7 (- note 80))))
          ((and (<= note 71)  (>= note 64) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 3  :col (invert-0-7 (- note 64))))
          ((and (<= note 55)  (>= note 48) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 4  :col (invert-0-7 (- note 48))))
          ((and (<= note 39)  (>= note 32) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 5  :col (invert-0-7 (- note 32))))
          ((and (<= note 23)  (>= note 16) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 6  :col (invert-0-7 (- note 16))))
          ((and (<= note 7)   (>= note 0) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 7  :col (invert-0-7 (- note 0))))
          ; left side buttons 
          ((and (= 0 (modulo (- note 8) 16)) (> vel 0))
            (hash-table-set* msg-ht :action 'left-btn  :btn (invert-0-7 (/ (- note 8) 16))))
          (else #f))
        ) 
      ('cc
        ; bottom buttons are cc, not note
        (if (= 127 cc-val)
          (hash-table-set* msg-ht :action 'bottom-btn  :btn (invert-0-7 (- cc-num 104)))))
    ); end case
    ;(post "row: " (msg-ht :row) "col:" (msg-ht :col))
    ; return the updated input-hash
    ;(post "parse-input-pad-1 returning msg hash:" msg-ht)
    msg-ht
))

; parse midi input from the right launchpad mini that is 90 degrees clockwise 
; probably should have just done this with a big hash table to be honest...
(define (parse-input-pad-2 msg-ht)
  ;(post "(parse-input-pad-2), msg-ht:" msg-ht)
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    ; helper for reversing midi note number lookup    
    (define (invert-0-7 num) (#(7 6 5 4 3 2 1 0) num))
    (define bottom-btn-table (hash-table 
      120 8  104 9  88 10  72 11  56 12  40 13  24 14  8 15))   

    (case msg
      ('note-on
        (cond
          ((bottom-btn-table note) 
            (hash-table-set* msg-ht :action 'bottom-btn  :btn (bottom-btn-table note)))
          (else
            (let ((row (remainder (modulo note 16) 16))
                   (col (+ 8 (invert-0-7 (floor (/ note 16.0))))))
              (hash-table-set* msg-ht :action 'grid-btn  :row row :col col)))
        )) 
      ('cc
        (if (= 127 cc-val)
           (hash-table-set* msg-ht :action 'right-btn  :btn (- cc-num 104))))
    ); end case
    ;(post "row: " (msg-ht :row) "col:" (msg-ht :col))
    ; return the update input-hash
    msg-ht
))

; parse midi input from bcf faders
(define (parse-input-bcf-1 msg-ht)
  ;(post "(parse-input-bcf-1) msg-ht: " msg-ht)
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    (case msg
      ('cc
        ; bottom buttons are cc, not note
        (if (< cc-num 8)
          (hash-table-set* msg-ht :action 'fader :cc-num cc-num :cc-val cc-val))
      )      
    ); end case msg
    ; return the updated input-hash
    ;(post "parse-input-pad-1 returning msg hash:" msg-ht)
    msg-ht
))


; parse midi input from the left foot launchpad with extra buttons on left and top
(define (parse-input-fpad-1 msg-ht)
  ;(post "(parse-input-fpad-1) msg-ht: " msg-ht)
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    ; helper for reversing midi note number lookup    
    (define (invert-0-7 num) (#(7 6 5 4 3 2 1 0) num))

    (case msg
      ('note-on
        (cond 
          ((and (<= note 119) (>= note 112) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 7  :row (- note 112)))
          ((and (<= note 103) (>= note 96) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 6  :row (- note 96)))
          ((and (<= note 87)  (>= note 80) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 5  :row (- note 80)))
          ((and (<= note 71)  (>= note 64) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 4  :row (- note 64)))
          ((and (<= note 55)  (>= note 48) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 3  :row (- note 48)))
          ((and (<= note 39)  (>= note 32) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 2  :row (- note 32)))
          ((and (<= note 23)  (>= note 16) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 1  :row (- note 16)))
          ((and (<= note 7)   (>= note 0) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :col 0  :row (- note  0)))
          ; left side buttons 
          ((and (= 0 (modulo (- note 8) 16)) (> vel 0))
            (hash-table-set* msg-ht :action 'left-btn  :btn (/ (- note 8) 16))
            ;(post "fpad-1 top-btn:" (msg-ht :btn))
            )
          (else #f))
        ) 
      ('cc
        ; bottom buttons are cc, not note
        (if (= cc-val 127)
          (hash-table-set* msg-ht :action 'left-btn  :btn (- cc-num 104)))
      )      
    ); end case msg
    ;(if (and vel (> vel 0))
    ;  (post "fpad 1 row: " (msg-ht :row) "col:" (msg-ht :col)))
    ; return the updated input-hash
    ;(post "parse-input-pad-1 returning msg hash:" msg-ht)
    msg-ht
))

; parse midi input from the right launchpad with extra buttons on top and right
(define (parse-input-fpad-2 msg-ht)
  ;(post "(parse-input-fpad-2), msg-ht:" msg-ht)
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    ; helper for reversing midi note number lookup    
    (define (invert-0-7 num) (#(7 6 5 4 3 2 1 0) num))
    (define right-btn-table (hash-table 
      8 8  24 7  40 6   56 5   72 4   88  3  104  2  120  1))   

    (case msg
      ('note-on
        (cond
          ((right-btn-table note)   ; if it's a note and is in the right-btn-table
            (hash-table-set* msg-ht :action 'right-btn  :btn (right-btn-table note)))
          (else
            (let ((row (invert-0-7 (floor (/ note 16.0))))
                  (col (+ 8 (remainder (modulo note 16) 16))))
              (hash-table-set* msg-ht :action 'grid-btn  :row row :col col)))
        )
        ;(post "fpad-2 row: " (msg-ht :row) "col:" (msg-ht :col) "btn:" (msg-ht :btn))
      )
      ('cc
        (if (= 127 cc-val)
          (hash-table-set* msg-ht :action 'right-btn  :btn (- cc-num 104)))
      )
    ); end case msg
    ; return the update input-hash
    ; return the updated input-hash
    ;(post "parse-input-fpad-2 returning msg hash:" msg-ht)
    msg-ht
))

 
; parse midi input from the fire, adding to the midi-hash
(define (parse-input-fire msg-ht)
  ;(post "(parse-input-fire)")
  (let ((msg  (msg-ht :msg))
        (note (msg-ht :note))
        (vel  (msg-ht :vel))
        (cc-num (msg-ht :cc-num))
        (cc-val (msg-ht :cc-val)))
    
    (case msg
      ('note-on
        (cond 
          ((and (>= note 54) (<= note 69) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 0  :col (- note 54)))
          ((and (>= note 70) (<= note 85) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 1  :col (- note 70)))
          ((and (>= note 86) (<= note 101) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 2  :col (- note 86)))
          ((and (>= note 102) (<= note 117) (> vel 0))
            (hash-table-set* msg-ht :action 'grid-btn  :row 3  :col (- note 102)))
          ; side buttons act as meta keys, sending the 'meta-btn message
          ((and (>= note 36) (<= note 39))
            (hash-table-set* msg-ht :action 'meta-btn  :btn (- note 36)))
          ; bottom (fire mode) buttons send 'mode-btn 
          ((and (>= note 44) (<= note 53) (> vel 0))
            (hash-table-set* msg-ht :action 'mode-btn  :btn (- note 44)))
          (else #f))
        ) ; TODO add fire rotary later
    )
    ; return the update input-hash
    msg-ht
))
    

