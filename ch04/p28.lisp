; Write an iterative version of REVERSE.
(DEFUN ITER-REVERSE (L)
       (DO ((R NIL (CONS (CAR L) R))
            (L L (CDR L)))
           ((NULL L) R)))
