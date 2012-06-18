; Define RIGHTP, a predicate that takes three arguments.
; The arguments are the lengths of the sides of a triangle
; that may or may not be a right angle triangle.  RIGHTP
; is to return T if the sum of the squares of the shorter
; sides is within 2% of the square of the longest side.
; You may assume the longest side is given as the first
; argument.
(DEFUN RIGHTP (C A B)
       (< (ABS (- 1 (/ (* C C) (+ (* A A) (* B B))))) 0.02))
