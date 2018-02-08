#lang racket
; Adapted From - http://cs.umw.edu/~finlayson/class/spring15/cpsc401/samples/racket/collatz.rkt

; return one step in the sequence
(define (collatz n)
  (if (even? n); If number is even
    (/ n 2); Divide it by 2
    (+ 1 (* 3 n)))); Otherwise * it by 3 and then add 1

; recurse over all numbers
(define (collatz-list n)
  (if (= n 1); If number equals 0
    (displayln "Finished\n"); Finished
    (begin
      (display "N = ")
      (displayln n)
      (collatz-list (collatz n)))))

(displayln "Number given is 5: ")
(collatz-list 5)
(displayln "Number given is 9: ")
(collatz-list 9)
(displayln "Number given is 2: ")
(collatz-list 2)