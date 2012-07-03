; Define ECHO1, a procedure that reads expressions and returns them without
; evaluation, and define ECHO2, a procedure that returns with evaluation.
(DEFUN ECHO1 ()
       (DO 
         ()
         (NIL)
         (PRINT (READ))))
(DEFUN ECHO2 ()
       (DO 
         ()
         (NIL)
         (PRINT (EVAL (READ)))))
