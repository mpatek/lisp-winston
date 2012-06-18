; Problem 3-1: Define new procedures OUR-FIRST, OUR-REST, and CONSTRUCT 
; that do the same things as CAR, CDR, and CONS.
(DEFUN OUR-FIRST (L)
       (CAR L))
(DEFUN OUR-REST (L)
       (CDR L))
(DEFUN CONSTRUCT (X L)
       (CONS X L))
