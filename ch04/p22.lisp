; Write DRAGON-CURVE, a procedure similar to C-CURVE
(DEFUN DRAGON-CURVE (LENGTH ANGLE SIGN MIN-LENGTH)
       (COND ((< LENGTH MIN-LENGTH) (PLOT-LINE LENGTH ANGLE))
             (T (DRAGON-CURVE (/ LENGTH (SQRT 2.0))
                              (* SIGN (+ ANGLE (/ PI 4.0)))
                              1.0
                              MIN-LENGTH)
                (DRAGON-CURVE (/ LENGTH (SQRT 2.0))
                              (* SIGN (- ANGLE (/ PI 4.0)))
                              -1.0
                              MIN-LENGTH))))
