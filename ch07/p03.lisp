; Define a procedure P that takes one argument and prints the atoms
; in it as a single list without nesting.
(DEFUN P (L)
       (PRINT (FLATTEN L)))

(DEFUN FLATTEN (L)
       (COND ((NULL L) NIL)
             ((ATOM L) (LIST L))
             (T (APPEND (P-AUX (CAR L)) (P-AUX (CDR L))))))

; Then define PC, a procedure that takes two arguments and prints only
; if the first evaluates to nonNIL. When PC does print, it is to print
; the second argument as a nonnested list.
(DEFUN PC (E L)
       (COND (E (P L))))

; ANd finally define RQ, a procedure that prints its argument as a
; nonnested list, reads a form given by the user, and returns its value.
(DEFUN RQ (PROMPT)
       (P PROMPT)
       (READ))
