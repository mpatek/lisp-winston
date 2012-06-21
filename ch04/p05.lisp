; Define a version of COUNT-ATOMS that uses an auxiliary variable to hang
; onto the count accumulated so far in exploring one part of the tree.
(DEFUN COUNT-ATOMS (L)
       (COUNT-ATOMS-AUX L 0))
(DEFUN COUNT-ATOMS-AUX (L RESULT)
       (COND ((NULL L) RESULT)
             ((ATOM L) (+ RESULT 1))
             (T (COUNT-ATOMS-AUX (CDR L) (COUNT-ATOMS-AUX (CAR L) RESULT)))))
