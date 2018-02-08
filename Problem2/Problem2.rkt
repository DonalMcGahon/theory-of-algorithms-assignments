#lang racket
; Adapted From - http://cs.umw.edu/~finlayson/class/spring15/cpsc401/samples/racket/collatz.rkt

; return one step in the sequence
(define (collatz n)
  (if (even? n)
    (/ n 2)
    (+ 1 (* 3 n))))

; recurse over all numbers
(define (collatz-list n)
  (if (= n 1)
    (displayln "All done!")
    (begin
      (display "N = ")
      (displayln n)
      (collatz-list (collatz n)))))


(collatz-list 9)