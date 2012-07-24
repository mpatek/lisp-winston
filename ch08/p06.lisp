; Devise a form involving DO that is equivalent to DOTIMES.
(DEFMACRO OUR-DOTIMES (PARAMS &REST BODY)
          `(DO* ((,(CAR PARAMS) 0 (+ ,(CAR PARAMS) 1)))
                ((>= ,(CAR PARAMS) ,(CADR PARAMS)) ,(CADDR PARAMS))
                ,@BODY))
