; Define QUADRATIC, a procedure with three parameters, A, B, and C.
; QUADRATIC is to return a list of the two roots of the polynomial
; ax^2 + bx + c, using this formula: 
; x = (-b +/- sqrt(b^2 - 4ac)) / 2a
; Assume that the roots are real.
(DEFUN QUADRATIC (A B C)
       (LIST 
         (/ (+ (- B) (SQRT (- (* B B) (* 4 (* A C))))) (* 2 A))
         (/ (- (- B) (SQRT (- (* B B) (* 4 (* A C))))) (* 2 A))
         ))
