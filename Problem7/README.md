# **Problem Sheet Question 7**

## Problem 7

![image](https://user-images.githubusercontent.com/14197773/38036468-aeb0e0a0-329e-11e8-9ab9-adc884d80779.png)

## Research on Question
I researched online how to go about doing this problem. I found some useful resources that helped me coming up with a design and solution for this problem. I realised that the map function would be able to help me as the map function allows us iterate through lists. The following is an example of a the map function taking from a [stackoverflow answer](https://stackoverflow.com/questions/30501411/what-is-definition-of-map-in-racket).

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

[Reference 1](https://stackoverflow.com/questions/30501411/what-is-definition-of-map-in-racket)

[Reference 2](https://docs.racket-lang.org/guide/lambda.html)

[Reference 3](https://stackoverflow.com/questions/25696063/lambda-in-racket-explained)