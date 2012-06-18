; Define ROTATE-RIGHT. It is to be like ROTATE-LEFT except
; that it is to rotate in the other direction.
(DEFUN ROTATE-RIGHT (L)
       (CONS (CAR (REVERSE L)) (REVERSE (CDR (REVERSE L)))))
