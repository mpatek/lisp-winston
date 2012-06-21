; Define FIBONACCI to pass along more than one Fibonacci number.
(DEFUN FIBONACCI (N)
       (FIB-AUX 1 1 N))
(DEFUN FIB-AUX (P1 P2 N)
       (COND ((ZEROP N) P1)
             ((= 1 N) P2)
             (T (FIB-AUX P2 (+ P1 P2) (- N 1)))))
