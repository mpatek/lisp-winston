; Define PSENTENCE, a procedure that behaves like P except that it
; prints no parentheses at all, with a period at the end.
(DEFUN PSENTENCE (L)
       (LET ((WORDS (FLATTEN L))) ; see p03.lisp for FLATTEN
            (COND ((NOT (NULL WORDS))
                   (TERPRI)
                   (PSENTENCE-AUX WORDS NIL)
                   (PRINC '|. |) 
                   T))))

(DEFUN PSENTENCE-AUX (WORDS SEP)
       (COND ((NOT (NULL WORDS))
              (COND ((NOT (NULL SEP)) (PRINC SEP)))
              (PRINC (CAR WORDS))
              (PSENTENCE-AUX (CDR WORDS) '| |))))
