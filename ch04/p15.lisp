; Define SAMESETP, a predicate that tests whether two sets contain
; the same elements.
(DEFUN SAMESETP (S1 S2)
       (AND (SAMESETP-AUX S1 S2) (SAMESETP-AUX S2 S1)))
(DEFUN SAMESETP-AUX (S1 S2)
       (COND ((NULL S1) T)
             ((NOT (MEMBER (CAR S1) S2)) NIL)
             (T (SAMESETP-AUX (CDR S1) S2))))
