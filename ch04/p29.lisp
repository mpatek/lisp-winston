; Define COALESCE, a procedure that takes a set of pairwise equivalences
; and returns a set of equivalence classes.
(DEFUN COALESCE (L)
       (COALESCE-AUX L NIL))
; Tail recursive auxiliary function.
(DEFUN COALESCE-AUX (L CLASSES)
       (COND ((NULL L) CLASSES)
             (T (COALESCE-AUX (CDR L) (ADD-EQUIVALENCE (CAR L) CLASSES)))))
; Add an equivalence to a set of classes
(DEFUN ADD-EQUIVALENCE (EQUIV CLASSES)
       (DO ((NEW-CLASS EQUIV)
            (C CLASSES (CDR C)))
           ((NULL C) (CONS NEW-CLASS CLASSES))
           (COND ((INTERSECTION (CAR C) NEW-CLASS)
                  (SETQ NEW-CLASS (UNION (CAR C) NEW-CLASS))
                  (SETQ CLASSES (REMOVE (CAR C) CLASSES))))))
