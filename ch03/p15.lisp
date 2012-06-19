; Write MEDIAN-OF-THREE, a procedure of three numeric arguments that
; determines which is in the middle.
(DEFUN MEDIAN-OF-THREE (A B C)
       (COND
         ((AND (>= B A) (>= A C)) A)
         ((AND (>= C A) (>= A B)) A)
         ((AND (>= A B) (>= B C)) B)
         ((AND (>= C B) (>= B A)) B)
         ((AND (>= A C) (>= C B)) C)
         ((AND (>= B C) (>= C A)) C)
         (T NIL)))
