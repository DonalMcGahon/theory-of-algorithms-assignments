#lang racket

(display "Donal McGahon G00299627 Problem Sheet 6 \n \n")

(define (hamming-distance a b)
(define c 0)
; Defining a function with 2 lists and a int c with value 0.
    (if (not (pair? a)) ; if a is not equal to 1
        c ; return c, otherwise
            (if (= (car a) (car b)) (hamming-distance (cdr a) (cdr b)) ; if a and b are equal, take the 2nd value from both lists
            (+ 1 (hamming-distance (cdr a) (cdr b)))))); if they are not equal, add 1 to the distance


(display "Hamming-Weight Tests: \n \n")
(display "(list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0) \n")
(display "Answer = ")(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
(display "(list 1 0 1 0 0 0 0 0) (list 1 1 1 1 0 0 0 0) \n")
(display "Answer = ")(hamming-distance (list 1 0 1 0 0 0 0 0) (list 1 1 1 1 0 0 0 0))
(display "(list 1 0 1 1 1 1 1 0) (list 1 1 1 1 0 0 0 0) \n")
(display "Answer = ")(hamming-distance (list 1 0 1 1 1 1 1 0) (list 1 1 1 1 0 0 0 0))