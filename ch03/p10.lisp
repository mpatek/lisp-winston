; Define NOT-REALP, a predicate with three parameters that
; returns T if b^2 - 4ac < 0.
(DEFUN NOT-REALP (a b c)
       (MINUSP (- (* B B) (* 4 (* A C)))))
