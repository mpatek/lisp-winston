; Define ROTATE-LEFT, a procedure that takes a list as the argument
; and returns a new list in which the former first element becomes
; the last.
(DEFUN ROTATE-LEFT (L)
       (REVERSE (CONS (CAR L) (REVERSE (CDR L)))))
