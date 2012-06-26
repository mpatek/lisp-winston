; Write FETCH a procedure that takes a key and an association list.
; If the key is found as the first element of an item on the association list,
; then the second item is to be returned. Otherwise FETCH is to return a
; question mark.
(DEFUN FETCH (KEY L)
       (COND ((NULL L) '?)
             ((EQUAL KEY (CAAR L)) (CADAR L))
             (T (FETCH KEY (CDR L)))))
