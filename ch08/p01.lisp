; Define macros OUR-WHEN and OUR-UNLESS
(DEFMACRO OUR-WHEN (TEST FORM)
          (COND (TEST FORM)))
(DEFMACRO OUR-UNLESS (TEST FORM)
          (COND ((NOT TEST) FORM)))
