; Define DEFINE a macro that uses DEFUN, but has the following syntax:
; (DEFINE (<procedure name> <parameter 1> ... <parameter n>)
;   <body>)
(DEFMACRO DEFINE (PROC &REST BODY)
          (LET ((PROC-NAME (CAR PROC)) (ARGS (CDR PROC)))
               `(DEFUN ,PROC-NAME ,ARGS ,@BODY)))
