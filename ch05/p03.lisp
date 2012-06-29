; Write TREND, a procedure that takes two association lists that record
; temperature, among other things.  TREND is to return either IMPROVING
; or STABLE or SINKING depending on whether the patient's temperature is
; moving toward normal, at normal, or moving away.
(DEFUN TREND (L1 L2)
       (LET ((D1 (ABS (- 98.6 (FETCH 'TEMPERATURE L1))))
             (D2 (ABS (- 98.6 (FETCH 'TEMPERATURE L2)))))
            (COND ((= D1 D2) 'STABLE)
                  ((> D1 D2) 'IMPROVING)
                  (T 'SINKING))))
