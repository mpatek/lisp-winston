; Define OUR-PUSH and OUR-POP as macros.
; OUR-PUSH takes two arguments, the item to be pushed
; and the name of a variable whose value is the list
; representing the stack. The value returned is the enlarged
; list.
(DEFMACRO OUR-PUSH (ITEM STACK)
          `(SETQ ,STACK (CONS ,ITEM ,STACK)))
; OUR-POP takes a single argument, the name of the variable whose value
; is the list.  The value returned is the item popped.
(DEFMACRO OUR-POP (STACK)
          `(LET ((ITEM (CAR ,STACK)))
                (SETQ ,STACK (CDR ,STACK))
                ITEM))
