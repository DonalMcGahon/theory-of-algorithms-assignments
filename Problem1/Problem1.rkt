#lang racket

(display "Prime Number Checker\n")
(display "\n")
(define i 2) ; setting range as 2 because a prime number cannot be 1 or less

(define (decide-prime? j) ; Creating a function called decide-prime
    (not
        (for/or [(a (in-range i j))] ; When we get a value back as #t for/or will return showing it is not a prime number
            (= 0 (remainder j a))))) ; checking to see if j is dividable by a

; Sample Numbers to check for Prime Numbers
(display "Is 2 a Prime Number?\n")
(decide-prime? 2)
(display "\n")

(display "Is 4 a Prime Number?\n")
(decide-prime? 4)
(display "\n")

(display "Is 5 a Prime Number?\n")
(decide-prime? 5)
(display "\n")

(display "Is 6 a Prime Number?\n")
(decide-prime? 6)
(display "\n")

(display "Is 12 a Prime Number?\n")
(decide-prime? 12)
(display "\n")

(display "Is 25 a Prime Number?\n")
(decide-prime? 25)
(display "\n")

(display "Is 61 a Prime Number?\n")
(decide-prime? 61)