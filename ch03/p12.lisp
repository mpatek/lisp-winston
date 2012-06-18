; Express (NOT U), (OR X Y Z), and (AND A B C) in terms of cond.
(DEFUN MY-NOT (U)
       (COND
         (U NIL)
         (T)))
(DEFUN MY-OR (X Y Z)
       (COND
         (X)
         (Y)
         (Z)
         (T NIL)))
(DEFUN MY-AND (A B C)
       (COND
         ((NOT A) NIL)
         ((NOT B) NIL)
         (C)
         (T NIL)))
