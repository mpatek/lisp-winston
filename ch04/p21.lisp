; Write PSEUDO-SIN, a procedure that takes an integer and produces the result
; previously offered up by SIN. The corresponding angle is PI/4 times the integer.
(DEFUN PSEUDO-SIN (X)
       (COND ((ZEROP X) 0)
             ((> X 7) (PSEUDO-SIN (REM X 8)))
             ((OR (= 1 X) (= 3 X)) (/ 1 (SQRT 2)))
             ((= 2 X) 1)
             (T (- (PSEUDO-SIN (- X 4))))))
