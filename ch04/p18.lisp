; Define TREE-WEIGHT
(DEFUN TREE-WEIGHT (L)
       (COND ((ATOM L) 1)
             (T (TREE-WEIGHT-AUX (TREE-WEIGHT (CADR L)) (TREE-WEIGHT (CADDR L))))))
(DEFUN TREE-WEIGHT-AUX (LEFT RIGHT)
       (COND ((= LEFT RIGHT) (+ LEFT 1))
             (T (MAX LEFT RIGHT))))