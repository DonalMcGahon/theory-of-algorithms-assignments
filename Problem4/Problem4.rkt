#lang racket


; Adapted from - https://stackoverflow.com/questions/41512010/sum-items-in-list-racket
; Function to add all elements in a list together
(define (my+ list)
  (for/sum ((i list))
    i))


