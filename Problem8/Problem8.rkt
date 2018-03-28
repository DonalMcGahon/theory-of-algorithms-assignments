#lang racket

(display "Donal McGahon G00299627 Problem Sheet 7 \n \n")

(define d null)
(define (chse a b c)
  (if (null? a)(null? b)(null? c))
      d ; if any of the lists are null return d
      (if (not(= (length a)(length b)(length c)))
          d ; if any of the lists are not equal in length, return d
       0))