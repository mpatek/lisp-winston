; Define conversion procedures, F-TO-C and C-TO-F using these formulas:
; C = (F + 40) / 1.8 - 40
; F = (C + 40) * 1.8 - 40
(DEFUN F-TO-C (F)
       (- (/ (+ 40 F) 1.8) 40))
(DEFUN C-TO-F (C)
       (- (* (+ 40 C) 1.8) 40))
