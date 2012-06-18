; Define PALINDROMIZE s.t. it takes a list as its argument and returns
; a palindrome that is twice as long.
(DEFUN PALINDROMIZE (L)
       (APPEND L (REVERSE L)))
