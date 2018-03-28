#lang racket

(display "Donal McGahon G00299627 Problem Sheet 9 \n \n")

(define d null) ; define d as null
(define (sod2 a b c) ; define chse with 3 elements a b & c
  (if (null? a)(null? b)(null? c))
      d ; if any of the lists are null return d
      (if (not(= (length a)(length b)(length c)))
          d d))  ; if any of the lists are not equal in length, return d