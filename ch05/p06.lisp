; Suppos X and Y are properties used to specify the position of cities
; in some reference coordinate system. Assuming a flat earth, write a
; procedure that calculates the distance between two cities.
(DEFUN DIST (C1 C2)
       (LET ((X1 (GET C1 'X))
             (Y1 (GET C1 'Y))
             (X2 (GET C2 'X))
             (Y2 (GET C2 'Y)))
            (COND ((AND X1 (AND X2 (AND Y1 Y2)))
                   (SQRT (+ (EXPT (- X1 X2) 2) (EXPT (- Y1 Y2) 2))))
                  (T NIL))))
