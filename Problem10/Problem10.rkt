#lang racket

(display "Donal McGahon G00299627 Problem Sheet 10 \n \n")

(define d null) ; define a as null
(define x 0) ; define x as 0

(define (lstq l m) ; define lstq that takes two lists as arguments
(define (sqre s)(* s s)) ; define square function called s

  (define (sumL a) ; define sumL function which will be used to add each element in a list
  (if (null? a)
      x ; if sumL is null return x
      (+ (car a)(sumL (cdr a))))) ; Otherwise, take 2nd element, then take the 1st element and repeat until crd a reaches the end of the list
        	(if (not (= (length l)(length m)))
                d ; if the length of l & m are not equal, return d
                (if (null? l)
                    x ; if l is null, return x
                    (if (null? m)
                        x ; if m is null return m
                        (sumL (list (sqre (- (car l)(car m))) (lstq (cdr l)(cdr m))))))))
                        ; Otherwise, take the 2nd element in both lists and subtract them. The result is then squared using the sqre function that was defined.
                        ; sumL function then adds each squared result and returns the sum.
          
(display "List l = 4.5 5.1 6.2 7.8, \nList m = 1.1 -0.1 6.1 3.8 \n")
(display "Result = ")
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
(display "\n")
(display "List l = 1.1 4.1 6.3 2.2, \nList m = 3.3 -0.4 3.5 8.3 \n")
(display "Result = ")
(lstq (list 4.1 4.1 6.3 2.2) (list 3.3 -0.1 3.5 8.3))