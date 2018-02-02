#lang racket

(display "Prime Number Checker\n")
(define i 2) ; setting range as 2 because a prime number cannot be 1 or less

(define (decide-prime? j) ; Creating a function called decide-prime
(not (for/or [(a (in-range i j))] ; When we get a value back as #t for/or will return showing it is not a prime number
((= 0 (remainder j a)))))) ; checking to see if j is dividable by a

(decide-prime? 2);