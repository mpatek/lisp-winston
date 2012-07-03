; Let A, B, and C be gobal free variables bound to lists of numbers
; representing the stacks of disks currently on each of the three pins.
; Rewrite MOVE-DISK to include checking on the legality of proposed
; moves, appropriate modification of the lists that are the values of A,
; B, and C, as well as generation of more informative output.
(DEFUN TOWER-OF-HANOI () (TRANSFER 'A 'B 'C (LENGTH A)))

(DEFUN MOVE-DISK (FROM-LABEL TO-LABEL)
       (LET ((FROM-LIST (EVAL FROM-LABEL))
             (TO-LIST (EVAL TO-LABEL))
             (FROM-TOP (CAR (EVAL FROM-LABEL)))
             (TO-TOP (CAR (EVAL TO-LABEL))))
            (COND ((AND (NOT (NULL FROM-LIST)) (OR (NULL TO-LIST) (> TO-TOP FROM-TOP)))
                   (SET FROM-LABEL (CDR FROM-LIST))
                   (SET TO-LABEL (CONS FROM-TOP TO-LIST))
                   (LIST (LIST 'MOVE FROM-TOP 'FROM FROM-LABEL 'TO TO-LABEL)))
                  (T (LIST (LIST 'ERROR 'MOVING 'FROM FROM-LABEL 'TO TO-LABEL))))))

(DEFUN TRANSFER (FROM TO SPARE N)
       (COND ((= N 1) (MOVE-DISK FROM TO))
             (T (APPEND (TRANSFER FROM SPARE TO (- N 1))
                        (MOVE-DISK FROM TO)
                        (TRANSFER SPARE TO FROM (- N 1))))))
