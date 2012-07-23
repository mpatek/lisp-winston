; Devise a form involving DO that is equivalent to DOLIST.
; Then write the macro OUR-DOLIST
(DEFMACRO OUR-DOLIST (PARAMS &REST BODY)
          `(DO* ((L ,(CADR PARAMS) (CDR L))
                 (,(CAR PARAMS) (CAR L) (CAR L)))
                ((NULL L) ,(CADDR PARAMS))
                ,@BODY))
