; Write LIST-KEYS, a procedure that takes an association
; list and returns a list of all the keys in it.
(DEFUN LIST-KEYS (L)
       (MAPCAR 'CAR L))
