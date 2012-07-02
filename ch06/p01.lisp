; Using MAPCAR, define a version of PRESENTP, a procedure defined
; in an earlier problem, which determines if a particular atom exists
; anywhere in an expression.
(DEFUN PRESENTP (X L)
       (COND ((ATOM L) (COND ((EQUAL X L) T) (T NIL)))
             (T (REMOVE-IF #'(LAMBDA (X) (NULL X)) (MAPCAR #'(LAMBDA (L) (PRESENTP X L)) L)))))
