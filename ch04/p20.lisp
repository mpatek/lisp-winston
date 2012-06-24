; Write the procedure PLOT-LINE using LINE, a procedure that takes four
; arguments, X-START, Y-START, X-END and Y-END.  Use the global free variables
; X-OLD and Y-OLD to remember where the previous line ended.
(SETQ X-OLD 0)
(SETQ Y-OLD 0)
(DEFUN PLOT-LINE (LEN ANGLE)
       (LET ((X-START X-OLD)
             (Y-START Y-OLD)
             (X-END (+ X-OLD (* LEN (COS ANGLE))))
             (Y-END (+ Y-OLD (* LEN (SIN ANGLE)))))
            (SETQ X-OLD X-END Y-OLD Y-END)
            (LINE X-START Y-START X-END Y-END)
            ))
(DEFUN LINE (X-START Y-START X-END Y-END)
       (LIST X-START Y-START X-END Y-END))
