; Binet's fibonacci formula
(DEFUN FIBONACCI (N)
       (/
         (-
           (EXPT (/ (+ 1 (SQRT 5)) 2) (+ N 1))
           (EXPT (/ (- 1 (SQRT 5)) 2) (+ N 1))) 
         (SQRT 5)))
