; Develop a new version of REWRITE that applies REWRITE
; recursively to lists constructed using NAND and 
; untranslated arguments of the logical functions.
(DEFUN REWRITE (L)
       (COND ((ATOM L) L)
             ((EQUAL (CAR L) 'NAND)
              (LIST 'NAND (REWRITE (CADR L)) (REWRITE (CADDR L))))
             ((EQUAL (CAR L) 'NOT)
              (REWRITE (LIST 'NAND (CADR L) T)))
             ((EQUAL (CAR L) 'AND)
              (REWRITE (LIST 'NOT (LIST 'NAND (CADR L) (CADDR L)))))
             ((EQUAL (CAR L) 'OR)
              (REWRITE (LIST 'NAND (LIST 'NOT (CADR L)) (LIST 'NOT (CADDR L)))))
             ((EQUAL (CAR L) 'XOR)
              (REWRITE (LIST 'AND (LIST 'OR (CADR L) (CADDR L)) (LIST 'NAND (CADR L) (CADDR L)))))))
