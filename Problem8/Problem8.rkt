#lang racket

(display "Donal McGahon G00299627 Problem Sheet 8 \n \n")

(define d null) ; define d as null
(define (chse a b c) ; define chse with 3 elements a b & c
  (if (null? a)(null? b)(null? c))
      d ; if any of the lists are null return d
      (if (not(= (length a)(length b)(length c)))
          d ; if any of the lists are not equal in length, return d
       (map (lambda (a b c) (if (= a 1) b c)) a b c))) ; map through the lists,
       ; if a = 1, add same element in b to the result, if it is not equal to 1, then add the same element in c as the result. 

(display "Lists : (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n")
(display "Answer = ")(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
(display "\n")
(display "Lists : (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n")
(display "Answer = ")(chse (list 1 0 1 0 1 0 1 0) (list 1 0 1 1 0 1 1 1) (list 0 0 0 1 0 1 0 1))