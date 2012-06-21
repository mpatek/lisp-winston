; Suppose that + and - can be used only to increment and decrement a
; number by one.
(DEFUN ADD-BY-INC (X Y)
       (COND ((ZEROP Y) X)
             (T (ADD-BY-INC (+ X 1) (- Y 1)))))
(DEFUN SUBTRACT-BY-INC (X Y)
       (COND ((ZEROP Y) X)
             (T (SUBTRACT-BY-INC (- X 1) (- Y 1)))))
