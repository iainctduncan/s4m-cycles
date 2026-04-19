; tests for the mod-test-helpers

(define test-transpose (list

  (define (test__transpose_under_oct)
    (let* ((nnums '(60 63 67 70))
           (key 'C)
           (scale 'dorian)
           (steps 1)
           (correct '(62 65 69 72)))
      (post "test__transpose_under_oct")
      (let ((res (transpose-note-nums nnums key scale steps)))
        (post "  - args: " nnums "steps:" steps "- res:" res "should be" correct)
        (equal? res correct))))

  (define (test__transpose_under_oct_2)
    (let* ((nnums '(60 63 67 70))
           (key 'C)
           (scale 'dorian)
           (steps 2)
           (correct '(63 67 70 74)))
      (post "test__transpose_under_oct_2")
      (let ((res (transpose-note-nums nnums key scale steps)))
        (post "  - args: " nnums "steps:" steps "- res:" res "should be" correct)
        (equal? res correct))))

  (define (test__transpose_over_oct)
    (let* ((nnums '(60 63 67 70))
           (key 'C)
           (scale 'dorian)
           (steps 8)
           (correct '(74 77 81 84)))
      (post "test__transpose_over_oct")
      (let ((res (transpose-note-nums nnums key scale steps)))
        (post "  - args: " nnums "steps:" steps "- res:" res "should be" correct)
        (equal? res correct))))

  (define (test__transpose_down_under_oct)
    (let* ((nnums '(60 63 67 70))
           (key 'C)
           (scale 'dorian)
           (steps -1)
           (correct '(58 62 65 69)))
      (post "test__transpose_down_under_oct")
      (let ((res (transpose-note-nums nnums key scale steps)))
        (post "  - args: " nnums "steps:" steps "- res:" res "should be" correct)
        (equal? res correct))))

  (define (test__transpose_down_over_oct)
    (let* ((nnums '(60 63 67 70))
           (key 'C)
           (scale 'dorian)
           (steps -8)
           (correct '(46 50 53 57)))
      (post "test__transpose_down_over_oct")
      (let ((res (transpose-note-nums nnums key scale steps)))
        (post "  - args: " nnums "steps:" steps "- res:" res "should be" correct)
        (equal? res correct))))
))

(define test-reflect (list

  (define (test__reflect_step_1)
    (let* ((step 3)
           (reflection-point 4)
           (correct 5))
      (post "\ntest__reflect_step_1")
      (let ((res (reflect-scale-step step reflection-point)))
        (post "  - step" step "ref-point" reflection-point "res:" res "correct:" correct)
        (equal? res correct))))

  (define (test__reflect_step_1)
    (let* ((step 5)
           (reflection-point 4)
           (correct 3))
      (post "\ntest__reflect_step_2 - negative")
      (let ((res (reflect-scale-step step reflection-point)))
        (post "  - step" step "ref-point" reflection-point "res:" res "correct:" correct)
        (equal? res correct))))
))        

(define (run-tests)
  (post "\n\nrunning test-mod-template-helpers.scm")
  (define test-suites (list
     ;test-transpose
     test-reflect
     ))
  (dolist (suite test-suites)
    (dolist (test suite)
      (if (not (test)) 
        (begin 
          (post "*** FAIL ***")
          (error 'test-fail))))))

