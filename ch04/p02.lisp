; Define a version of OUR-EXPT that is tail recursive.
(DEFUN OUR-EXPT (M N)
       (OUR-EXPT-AUX 1 M N))
(DEFUN OUR-EXPT-AUX (RESULT M N)
       (COND ((ZEROP N) RESULT)
             (T (OUR-EXPT-AUX (* M RESULT) M (- N 1)))))
