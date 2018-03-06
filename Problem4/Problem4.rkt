#lang racket

(display "Donal McGahon - G00299627 - Problem 4 \n")
(display "\n")
; Adapted from - https://stackoverflow.com/questions/41512010/sum-items-in-list-racket
; Function to add all elements in a list together
(define (my+ list)
  (for/sum ((i list))
    i))

; Reference - https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29
  (define (sublsum list); defining function subslum
    (for ([allcombinations (in-list (combinations list) )]); lopping through all combinations of the list
      (if(= 0 (my+ allcombinations)) (displayln allcombinations); when list added together equals 0, display output
       '()))) ; if list does not equal 0, display nothing.

(display "List = 1 2 3 4 -5 \n")
(sublsum '(1 2 3 4 -5))
(display "\n")

(display "List = 1 -2 -3 4 5\n")
(sublsum '(1 -2 -3 4 5))
(display "\n")

(display "List = 1 -2 -3 4 -5 6 7 \n")
(sublsum '(1 -2 -3 4 -5 6 7))

