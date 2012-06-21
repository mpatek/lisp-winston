; Define OUR-REVERSE, a tail-recursive version of REVERSE.
(DEFUN OUR-REVERSE (L)
       (OUR-REVERSE-AUX NIL L))
(DEFUN OUR-REVERSE-AUX (RESULT L)
       (COND ((NULL L) RESULT)
             (T (OUR-REVERSE-AUX (CONS (CAR L) RESULT) (CDR L)))))
