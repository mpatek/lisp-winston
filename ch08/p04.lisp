; Define new procedures, OUR-FIRST, OUR-REST, and CONSTRUCT,
; as macros that do the same things as CAR, CDR, and CONS.
(DEFMACRO OUR-FIRST (L)
          `(CAR ,L))
(DEFMACRO OUR-REST (L)
          `(CDR ,L))
(DEFMACRO CONSTRUCT (X L)
          `(CONS ,X ,L))
