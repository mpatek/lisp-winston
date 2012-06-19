; Define CHECK-TEMPERATURE, a procedure that is to take one argument, such
; that it returns RIDICULOUSLY-HOT if the argument is greater than 100,
; it returns RIDICULOUSLY-COLD if the argument is less than 0, and it
; returns OK otherwise.
(DEFUN CHECK-TEMPERATURE (X)
       (COND
         ((> X 100) 'RIDICULOUSLY-HOT)
         ((< X 0) 'RIDICULOUSLY-COLD)
         (T 'OK)))
