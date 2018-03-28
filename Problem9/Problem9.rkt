#lang racket

(display "Donal McGahon G00299627 Problem Sheet 9 \n \n")

(define d null) ; define d as null
(define (sod2 a b c) ; define chse with 3 elements a b & c
  (if (null? a)(null? b)(null? c))
      d ; if any of the lists are null return d
      (if (not(= (length a)(length b)(length c)))
          d ; if any of the lists are not equal in length, return d
          (map (lambda (a b c) (if (odd? (+ a b c) ) 1 0)) a b c))); ; map through the lists,
          ; if a + b + c corresponding elements added together make an odd number return 1, 
          ; otherwise if they return an even number return 0.


(display "Lists : (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n")
(display "Answer = ")(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
(display "\n")
(display "Lists : (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n")
(display "Answer = ")(sod2 (list 1 0 1 0 1 0 1 1) (list 1 0 1 1 0 0 0 0) (list 0 0 1 0 0 0 0 1))