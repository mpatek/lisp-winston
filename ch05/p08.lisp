; Define ADAM, a procedure that returns the most distant male ancestor
; of a person through the paternal line, working through the FATHER
; property. If no male ancestor is known, the procedure is to return
; the name given as its argument.
(DEFUN ADAM (X)
       (COND ((NULL (GET X 'FATHER)) X)
             (T (ADAM (GET X 'FATHER)))))
