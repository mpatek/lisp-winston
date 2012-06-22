; Define MOBILEP, a procedure that determines whether a mobile is balanced.
; It returns NIL if it is not, and its total weight if it is.
(DEFUN MOBILEP (M)
       (COND ((ATOM M) M)
             ((NULL (M-1 M)) NIL)
             ((NULL (M-2 M)) NIL)
             ((= (M-1 M) (M-2 M)) (+ (CAR M) (+ (M-1 M) (M-2 M))))
             (T NIL)))
(DEFUN M-1 (M)
       (MOBILEP (CAR (CDR M))))
(DEFUN M-2 (M)
       (MOBILEP (CAR (CDR (CDR M)))))
