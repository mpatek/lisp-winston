; Define a procedure, CONNECT, that takes two cities as arguments and puts each
; on the property list of the other under the NEIGHBORS property.
(DEFUN CONNECT (C1 C2)
       (LET ((C1N (GET C1 'NEIGHBORS))
             (C2N (GET C2 'NEIGHBORS)))
            (COND ((NOT (MEMBER C1 C2N)) (SETF (GET C2 'NEIGHBORS) (CONS C1 C2N))))
            (COND ((NOT (MEMBER C2 C1N)) (SETF (GET C1 'NEIGHBORS) (CONS C2 C1N))))
            ))
