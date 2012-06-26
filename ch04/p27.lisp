; Define OUR-MEMBER using DO.
(DEFUN OUR-MEMBER (ITEM L)
       (DO ((L L (CDR L)))
           (NIL)
           (COND ((NULL L) (RETURN NIL))
                  ((EQUAL (CAR L) ITEM) (RETURN L)))))
