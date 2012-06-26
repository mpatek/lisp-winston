; Define FACTORIAL, using the iterative version of OUR-EXPT as a model.
(DEFUN FACTORIAL (N)
       (DO ((RESULT 1 (* COUNTER RESULT))
            (COUNTER 1 (+ COUNTER 1)))
           ((> COUNTER N) RESULT)))
