; Define CIRCLE sucth that it returns a list of the circumference and area
; of a circle whose radius is given.
(DEFUN CIRCLE (R)
       (LIST (* 2 (* PI R)) (* PI (* R R))))
