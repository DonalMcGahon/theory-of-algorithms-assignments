#lang racket

(display "Donal McGahon G00299627 Problem Sheet 5 \n \n")

(define (hamming-weight lst)
  (if (null? lst)
      0 ; if list is null return zero, otherwise
(+ (car lst) (hamming-weight (cdr lst))))) 
; take the 2nd element of the pair (cdr list) and take the 1st element of the pair (car list)
;repeat this until the list is null and add all the 1st elements
      

; Tests
(display "Lists \n")
(hamming-weight (list 1 1 1 0 0 0))
(hamming-weight (list 1 1 1 0 0 0 1 0 1))
(hamming-weight (list 1 1 1 0 0 0 1 0 1 1 1))