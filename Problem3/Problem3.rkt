#lang racket

(display "Donal McGahon - G00299627 - Probelm 3 \n")
(display "\n")

; Adapted from - https://courses.cs.washington.edu/courses/cse341/98sp/scheme/recursion.html
; This function appends one list to the end of another list
(define (my-append x y)
  (if (null? x) y
      (cons (car x) (my-append (cdr x) y))))

; Adapted from - https://stackoverflow.com/questions/13046017/rotate-a-list-to-the-left-in-scheme-racket
; lcycle method that returns the list cyclically shifted one place to the left
(define (lcycle list)
  (if (null? list)
      '()
      (my-append (cdr list); Gets the second element and the rest of list list.
              (cons (car list)'())))); gets first element in list and adds it to the previous list.

(display "Lists cyclically shifted one place to the left \n")
(display "1 2 3 4 5  \n")
(lcycle '(1 2 3 4 5))
(display "a b c d e \n")
(lcycle '(a b c d e))
(display "3 8 4 9 2 \n")
(lcycle '(3 8 4 9 2))