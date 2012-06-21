; Define INTERSECTP a predicate that tests whether two sets have any elements in common.
(DEFUN INTERSECTP (S1 S2)
       (COND ((NULL S1) NIL)
             ((MEMBER (CAR S1) S2) T)
             (T (INTERSECTP (CDR S1) S2))))
