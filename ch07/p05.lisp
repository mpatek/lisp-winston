; Define BOOK-PRINT, a procedure that indents two spaces.
(DEFUN BOOK-PRINT (STR)
       (TERPRI)
       (PRINC '|  |)
       (PRIN1 STR)
       (TERPRI)
       T
       )
