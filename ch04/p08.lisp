; Define PRESENTP a predicate that determines whether a given atom occurs
; anywhere in an expression.
(DEFUN PRESENTP (X L)
       (COND ((NULL L) NIL)
             ((ATOM L) (COND ((EQUAL X L) T)
                             (T NIL)))
             (T (OR (PRESENTP X (CAR L)) (PRESENTP X (CDR L))))))
