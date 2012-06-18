; Define PALINDROMEP, a predicate that tests its argument
; to see if it is a list that has the same sequence of elements
; when read from right to left as when it is read from left
; to right.
(DEFUN PALINDROMEP (L)
       (EQUAL L (REVERSE L)))
