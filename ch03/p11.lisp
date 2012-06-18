; Express (ABS X), (MIN A B), and (MAX A B) in terms of COND.
(DEFUN MY-ABS (X)
       (COND 
         ((MINUSP X) (- X))
         (T X)))
(DEFUN MY-MIN (A B)
       (COND
         ((< A B) A)
         (T B)))
(DEFUN MY-MAX (A B)
       (COND
         ((> A B) A)
         (T B)))
