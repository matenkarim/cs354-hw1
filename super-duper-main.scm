(load "super-duper.scm")

;;; ------------------------------------------------------------
;;; Demo of the example inputs provided in the pub/assignments/la1-1/hw pdf file.
;;; ------------------------------------------------------------

(display "-----------------------------------------------------")
(newline)(newline)
(display "Input: (super-duper 123 1)") (newline)
(display "⇒ ") 
(display (super-duper 123 1))

(newline)(newline)

(display "Input: (super-duper 123 2)") (newline)
(display "⇒ ") 
(display (super-duper 123 2))

(newline)(newline)

(display "Input: (super-duper '() 1)") (newline)
(display "⇒ ") 
(display (super-duper '() 1))

(newline)(newline)

(display "Input: (super-duper '() 2)") (newline)
(display "⇒ ") 
(display (super-duper '() 2))

(newline)(newline)

(display "Input: (super-duper '(x) 1)") (newline)
(display "⇒ ") 
(display (super-duper '(x) 1))

(newline)(newline)

(display "Input: (super-duper '(x) 2)") (newline)
(display "⇒ ") 
(display (super-duper '(x) 2))

(newline)(newline)

(display "Input: (super-duper '(x y) 1)") (newline)
(display "⇒ ") 
(display (super-duper '(x y) 1))

(newline)(newline)

(display "Input: (super-duper '(x y) 2)") (newline)
(display "⇒ ")
(display (super-duper '(x y) 2))

(newline)(newline)

(display "Input: (super-duper '((a b) y) 3)") (newline)
(display "⇒ ")
(display (super-duper '((a b) y) 3))
(newline)(newline)

(display "-----------------------------------------------------")
(newline)(newline)
(display "Extra test cases:")
(newline)(newline)

;; Test case for zero duplicates 
(display "Input: (super-duper '(1 2 3) 0)") (newline)
(display "⇒ ")
(display (super-duper '(1 2 3) 0))
(newline)(newline)

;; Test case for an empty list as an inner list
;; I believe that it should not duplicate the inner list
(display "Input: (super-duper '(2 () 3) 3)") (newline)
(display "⇒ ")
(display (super-duper '(2 () 3) 3)) 
(newline)(newline)

;; Test case for inner lists within inner lists
;; The output should duplicate all pairs recursively
(display "Input: (super-duper '((1 (4 0)) 8) 2)") (newline)
(display "⇒ ")(newline)
(display (super-duper '((1 (4 0)) 8) 2))
(newline)(newline)

;; Test case that tests different types of data
(display "Input: (super-duper '(Hello World (2 3 No) !% 1) 2))") (newline)
(display "⇒ ") (newline)
(display (super-duper '(Hello World (2 3 No) !% 1) 2))
(newline)(newline)
