# **Problem Sheet Question 6**

## Problem 6

![image](https://user-images.githubusercontent.com/14197773/38027842-f3ea7520-3288-11e8-822c-a4cba0364b80.png)

## Research on Question
I done some reseach on this question by searching and understanding what the [hamming distance](https://en.wikipedia.org/wiki/Hamming_distance) is. I learned that the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. [2](https://en.wikipedia.org/wiki/Hamming_distance) In other words, it measures the smallest amount of numbers it takes to change one string into the other. I also researched on how to go about calculating the hamming distance of two strings and found a very useful [link](https://classroom.synonym.com/calculate-hamming-distance-2656.html).

## Design and Solution
For this question I tried to follow, through my research of hamming weight, the best way to implement this question. First I defined a function that had 2 lists called a and b. I also defined a integer called c and gave it the value 0.

`
(define (hamming-distance a b)
(define c 0)
`

I then checked to see if a is not equal to 1, and if it is return c which has a value of 0.

`
    (if (not (pair? a))
        c
`

Finally, I checked to see if list a and b are equal and if so the recursion continues, otherwise if they are not equal, add 1 to the distance.

```
(if (= (car a) (car b)) (hamming-distance (cdr a) (cdr b))
(+ 1 (hamming-distance (cdr a) (cdr b))))))
```

## Output

![image](https://user-images.githubusercontent.com/14197773/38036014-a696e064-329d-11e8-9420-c0f987f7d43f.png)

## Conclusion
I found once again that this problem was very interesting and through this problem and the previous problem, I have learned a lot about the hamming weight and hamming distance. I learned how they work and now how to implement them into a programming language like racket. It has also improved my capabilities with racket.

## References
[Reference 1](https://classroom.synonym.com/calculate-hamming-distance-2656.html)

[Reference 2](https://en.wikipedia.org/wiki/Hamming_distance)

[Reference 3](https://classroom.synonym.com/calculate-hamming-distance-2656.html)