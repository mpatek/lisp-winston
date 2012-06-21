; Write a version of OUR-EXPT that considers its second argument to be a
; binary number and looks at one bit of it at a time.
(DEFUN OUR-EXPT (M N)
       (COND ((ZEROP N) 1)
             ((ZEROP (REM N 10)) (OUR-EXPT (* M M) (TRUNCATE N 10)))
             (T (* M (OUR-EXPT (* M M) (TRUNCATE N 10))))))
