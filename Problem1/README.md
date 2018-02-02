## Problem Sheet Question 1

## Question 1:

* Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

## Brute-Force
In computer science, brute-force search or exhaustive search, also known as generate and test, is a very general problem-solving technique that consists of systematically enumerating all possible candidates for the solution and checking whether each candidate satisfies the problem's statement.[1]

## My Solution to Problem 1

```
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
```

## Conclusion
I found using racket like most languages starting off, hard to get my head around. But after spending some time understanding how it works and looking at resouces online I feel I am beginning to understand how the programming language works. I eventually got the brute-force algorithm to work for me and I am pleased with the result.


## References:

[1] https://en.wikipedia.org/wiki/Brute-force_search