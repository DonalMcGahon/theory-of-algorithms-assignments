# **Problem Sheet Question 9**

## Problem 9

![image](https://user-images.githubusercontent.com/14197773/38047000-ff6d16fc-32b8-11e8-90d8-b77b6d49fa2d.png)

## Research on Question
When I first looked at this question I realised it was going to be very similar to the previous problem, [Problem 7](https://github.com/DonalMcGahon/theory-of-algorithms-assignments/tree/master/Problem7) and [Problem 8](https://github.com/DonalMcGahon/theory-of-algorithms-assignments/tree/master/Problem8), so I knew I would have researched some of this question already. I realised that the map function would be able to help me again as the map function allows us iterate through lists. The following is an example of a the map function taking from a [stackoverflow answer](https://stackoverflow.com/questions/30501411/what-is-definition-of-map-in-racket).

```
(define (map f l)
  (if (null? l)
      '()
      (cons (f (car l)) (map f (cdr l)))))

(map (lambda (n) (* n n)) '(1 2 3 4)) ;; => (1 4 9 16)
```

What this function is doing with the help of the map built in function, is going through the list, multiplying each number by itself and returning the result.
I also researched and used in my solution the lambda function. According to the [Racket Documentation](https://docs.racket-lang.org/) a lambda expression creates a function. A lambda expression has the form `(lambda (arg-id ...) body ...+)`.
In Racket lambdas are very useful when you want to pass an in-line, one-shot function as a parameter without defining it first. For example, suppose that we want to square a list of numbers. We can go the long way and define a square function first, and then use map:

```
(define (square x)
  (* x x))

(map square '(1 2 3 4 5))
=> '(1 4 9 16 25)
```

Or we can simply pass a lambda, like this:

```
(map (lambda (x) (* x x))
     '(1 2 3 4 5))

=> '(1 4 9 16 25)
```


## Design and Solution
## Output
## Conclusion

## References