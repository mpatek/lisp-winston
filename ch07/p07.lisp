; Write a simple OUR-PPRINT. If OUR-PPRINT's argument is a list, it is to print the
; first element, then the second, and then the third, neatly lining up the third and
; the rest under the second.  Any elements that are themselves lists are to be printed
; in the same way, recursively; recursion is to stop when atoms are encountered.
(DEFUN OUR-PPRINT (L)
       (OUR-PPRINT-AUX L 0))
(DEFUN OUR-PPRINT-AUX (L INDENT) ; returns the number of characters printed after the indent
       (PRINT-SPACES INDENT)
       (COND ((NULL L) (PRINC '|()|) 2)
             ((ATOM L) (PRINC L) (LENGTH (SYMBOL-NAME L)))
             (T (PRINC '|(|) (LET ((LEN-1 (OUR-PPRINT-AUX (CAR L) 0)))
                                  (COND ((NULL (CDR L)) (PRINC '|)|) (+ LEN-1 2)) ; single element list
                                        (T (LET ((LEN-2 (OUR-PPRINT-AUX (CADR L) 1)))
                                                (DO ((L (CDDR L) (CDR L))
                                                     (LEN-2 LEN-2 (OUR-PPRINT-AUX (CAR L) (+ INDENT (+ LEN-1 2)))))
                                                    ; return length of first + last + 3 (open + space + close)
                                                    ((NULL L) (PRINC '|)|) (+ LEN-1 (+ LEN-2 3))) 
                                                    (TERPRI) ; print new line
                                                ))))))))
(DEFUN PRINT-SPACES (N)
       (COND ((= 0 N) T)
             (T (PRINC '| |) (PRINT-SPACES (- N 1)))))
