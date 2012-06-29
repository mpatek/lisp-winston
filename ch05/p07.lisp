; Assume that if a person's father is known, the father's name is given
; as the value of the FATHER property. Define GRANDFATHER, a procedure
; that returns the name of a person's paternal grandfather, if known, or
; nil otherwise.
(DEFUN GRANDFATHER (X)
       (COND ((GET X 'FATHER) (GET (GET X 'FATHER) 'FATHER))
             (T NIL)))
