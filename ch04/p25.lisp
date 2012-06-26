; Define DYNAMIC-RANGE, a procedure that takes one argument, a list of
; numbers, and returns the ratio of the biggest to the smallest.
(DEFUN DYNAMIC-RANGE (L)
       (/ (APPLY 'MIN L) (APPLY 'MAX L)))
