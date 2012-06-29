; Write a version of OUR-SUBLIS, using ASSOC.
(DEFUN OUR-SUBLIS (A-LIST L)
       (COND ((ATOM L) (LET ((NEW (ASSOC L A-LIST)))
                            (COND (NEW (CADR NEW))
                                  (T L))))
             (T (CONS (OUR-SUBLIS A-LIST (CAR L)) (OUR-SUBLIS A-LIST (CDR L))))))
