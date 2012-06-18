; Define your own version of the predicate EVENP for
; checking whether an integer is divisible by 2.
; Call it OUR-EVENP
(DEFUN OUR-EVENP (X)
       (ZEROP (REM X 2)))
