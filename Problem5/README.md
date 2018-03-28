# **Problem Sheet Question 5**

## Problem 5
![image](https://user-images.githubusercontent.com/14197773/37036002-45bdcb94-2146-11e8-94e1-a36fa696452b.png)


## Research on Question
For this problem we were asked to create a program that will count the number of non zero elements in a list. I first researched ways of how to do this in racket and found multple ways to do this, but not from scratch. So I decided to try and interpret the solutions I found and make them work from scratch.
I also researched what hamming weight was and how it works. The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. [1](https://en.wikipedia.org/wiki/Hamming_weight)
So in my case I tested my solution with the amount of 1's there was in a list that consisted of 0's and 1's.

## Design and Solution
For the design of this problem I tried to keep it as simple as possible.
I first defined a hamming weight list. If that list is null, return 0.
Otherwise take the 2nd element of the pair (cdr list) and take the 1st element of the pair (car list). Then repeat this until the list is null and add all the 1st elements together.

```
(define (hamming-weight lst)
  (if (null? lst)
            0
(+ (car lst) (hamming-weight (cdr lst)))))
```

## Output
![image](https://user-images.githubusercontent.com/14197773/38027639-4cadf322-3288-11e8-889e-eb3f84aac935.png)

## Conclusion
I found this problem sheet interesting and learned about what exactly hamming weight is. I also learnt how to implement the hamming weight into a racket solution.

## References
[Reference 1](https://en.wikipedia.org/wiki/Hamming_weight)
