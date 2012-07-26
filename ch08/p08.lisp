; Suppose LET did not exist. Define your own OUR-LET as a macro using LAMBDA.
(DEFMACRO OUR-LET (VARS &REST BODY)
          `((LAMBDA ,(MAPCAR 'CAR VARS) ,@BODY) ,@(MAPCAR 'CADR VARS)))
