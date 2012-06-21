; Define SQUASH a procedure that takes an expressions as the argument and
; returns a nonnested list of all atoms found in the expression.
(DEFUN SQUASH (L)
       (COND ((NULL L) L)
             ((ATOM L) (LIST L))
             (T (APPEND (SQUASH (CAR L)) (SQUASH (CDR L))))))
