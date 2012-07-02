; Write SUBSTITUTE-FOR-PARAMETERS, a procedure that replaces
; occurances of parameters in the body of a lambda expression
; with corresponding arguments.
(DEFUN SUBSTITUTE-FOR-PARAMETERS (SUBS L)
       (OUR-SUBLIS (OUR-PAIRLIS (CADR L) SUBS) (CADDR L)))
