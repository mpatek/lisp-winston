; Define ANCESTORS, a procedure that returns a list consisting of the
; person given as its argument together with all known ancestors of
; the person. It is to work through both the FATHER and MOTHER properties.
(DEFUN ANCESTORS (X)
       (COND ((NULL X) NIL)
             (T (CONS X (APPEND (ANCESTORS (GET X 'MOTHER)) (ANCESTORS (GET X 'FATHER)))))))
