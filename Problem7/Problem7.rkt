#lang racket

(display "Donal McGahon G00299627 Problem Sheet 7 \n \n")

(define d null)
(define (maj a b c)
  (if (null? a)(null? b)(null? c))
      d ; if any of the lists are null return d
      (if (not(= (length a)(length b)(length c)))
          d ; if any of the lists are not equal in length, return d
          (map (lambda (a b c) (if (> (+ a b c) 1) 1 0)) a b c))) ; map through the lists,
          ;if the sum of the elements in their corresponding positions is greater than 1,
            ; return 1, otherwise 0 will be returned.

(display "Problem Sheet 7 Tests: \n")
(display "List is : \n")
(display "(list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 1 1 0 1 0 1 0 1) \n")
(display "Answer = ")(maj (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 1 1 0 1 0 1 0 1))
(display "\n")

(display "List is : \n")
(display "(list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 1 1 0 1 0 1 0 1) \n")
(display "Answer = ")(maj (list 1 1 0 0 1 1 1 1)(list 1 0 1 1 0 0 1 0)(list 1 0 0 1 0 1 0 0))
(display "\n")