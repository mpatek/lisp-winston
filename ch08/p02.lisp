; Define BACKQUOTE such that it has the effect of backquote and 
; allows for the appropriate handling of expressions with COMMA
; and COMMA-AT
(DEFMACRO BACKQUOTE (S)
          (LIST 'QUOTE (BACKQUOTE1 S)))
(DEFUN BACKQUOTE1 (S)
       (COND ((OR (NULL S) (ATOM S)) S)
             ((EQUAL (CAR S) 'COMMA) (EVAL (CADR S)))
             ((AND (NOT (ATOM (CAR S))) (EQUAL (CAAR S) 'COMMA-AT))
                   (APPEND (EVAL (CADAR S)) (BACKQUOTE1 (CDR S))))
             (T (CONS (BACKQUOTE1 (CAR S)) (BACKQUOTE1 (CDR S))))))
