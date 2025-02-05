;;; super-duper.scm
;;; ------------------------------------------------------------
;;; Description:
;;;   Implements the "super-duper" function to recursively duplicate 
;;;   elements in a list based on a given count. Atoms and empty 
;;;   lists are returned unchanged, while proper lists are processed 
;;;   recursively, duplicating both elements and nested lists.
;;;
;;; Functions:
;;;   - super-duper: Main function that handles atoms, empty lists, 
;;;                  and proper lists.
;;;
;;;   - duper: Recursively processes lists, duplicating each element.
;;;
;;;   - du-element: Handles duplication of atoms and nested lists.
;;;
;;;   - du-duplicate: Duplicates an item 'count' times, with special 
;;;                   handling for empty lists.
;;;
;;;   - du-build-string: Recursively concatenates two lists using cons.
;;;
;;;
;;; Author: Maten Karim
;;; Date: 1 February 2025
;;; ------------------------------------------------------------

;; The main function that checks the type of 
(define (super-duper source count)
    (cond
        ((null? source) source)                 ; Returns the source if source is null (empty list).
        ((pair? source) (duper source count))   ; Calls duper if source is a pair.
        (else source)))                         ; Else, returns source (an atom).

;; Recursively processes a list, duplicating each element based on 'count'.
(define (duper lst count)
    (cond
        ((null? lst) '())                       ; Base case: if the list is empty, return an empty list.
        (else
            ;; Process the first element with 'du-element' and recursively process the rest with 'duper'.
            ;; The results are combined using 'du-build-string' to maintain proper list structure.
            (du-build-string (du-element (car lst) count) (duper (cdr lst) count)))))

;; Determines whether an element is an atom or a nested list and handles duplication accordingly.
(define (du-element elem count)
    (cond
        ((pair? elem)
            ;; If the element is a nested list, process it recursively with 'super-duper'
            ;; and then duplicate the entire processed list 'count' times.
            (du-duplicate (super-duper elem count) count))
        (else
            ;; If the element is an atom, directly duplicate it 'count' times.
        (du-duplicate elem count))))

;; Duplicates an item 'count' times. Handles special cases for empty lists.
(define (du-duplicate item count)
  (if (null? item)
      (if (> count 0)
          (list item)     ; Special case: if 'item' is an empty list, return a single occurrence of it 
                          ; (instead of duplicating it multiple times).
          '())            ; If 'count' is 0, return an empty list (no duplication).
      (if (= count 0)
          '()             ; Base case: if 'count' reaches 0, stop duplicating and return an empty list.
          (cons item (du-duplicate item (- count 1))))))    ; Recursively duplicate 'item' by decrementing 'count'

;; Recursively concatenates two lists using 'cons'.
(define (du-build-string list1 list2)
    (cond 
          ((null? list1) list2)     ; Base case: if 'list1' is empty, return 'list2'.
          (else
              ;; Recursively combine the head of 'list1' with the concatenation of the rest of 'list1' and 'list2'.
              (cons (car list1) (du-build-string (cdr list1) list2)))))


