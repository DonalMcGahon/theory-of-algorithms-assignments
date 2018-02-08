# **Problem Sheet Question 2**

## Problem 2
Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

![image](https://user-images.githubusercontent.com/14197773/35945378-ed90a048-0c57-11e8-874d-b757576ba1a6.png)

End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on.

## Research on Problem 2
I was unsure about how to go about this question when I read it first. As maths would not be my strong point I did not fully understand the question at the beginning. I then decided to do some reseach on the question and found that it is a famous maths question called Collatz conjecture. The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined as follows: start with any positive integer n. Then each term is obtained from the previous term as follows: if the previous term is even, the next term is one half the previous term. Otherwise, the next term is 3 times the previous term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1. [Reference](https://en.wikipedia.org/wiki/Collatz_conjecture)

## Design and Solution
After doing my reseach on the question I then had to come up with a way to interpret what I had learned into a solution in racket. I learned about a number type in racket called [even?](https://docs.racket-lang.org/reference/number-types.html). This number type returns a true or false based on an interger that it is given.
> For example:

```(even? 10.0)```
will return
```#t```

OR

```(even? 11.0)```
will return
```#f```

So I used ```even?``` in my solution to check if the number in question is even or odd. So if the number given is even divide it by 2. Otherwise if the number is odd multiply it by 3 and then add 1 to it. I then kept the program running until n equals 1 and the solution has finished.

## Solution

![image](https://user-images.githubusercontent.com/14197773/35998339-31cf99a0-0d14-11e8-851c-71fbbff051fb.png)

## Conclusion

I found this problem very interesting and challenging. I learnt about [Collatz conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture) and what it is. I found that doing this probelm helped my skills in the Racket programming language. 