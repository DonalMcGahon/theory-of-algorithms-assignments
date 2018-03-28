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

For this problem I first created a integer and set it to null. I also created 3 sod2 lists named a, b and c.

```
(define d null)
(define (sod2 a b c)
```
I proceeded to check if any of the lists were null to return d, followed by if any of the lists were not equal in length to return d (which is set to null) also.

```
  (if (null? a)(null? b)(null? c))
      d
      (if (not(= (length a)(length b)(length c)))
          d)
```
Finally, I used the map built in function to map through each list and if a + b + c corresponding elements when added together make an odd number, then return 1 to a new list. If it did not return an odd number, then 0 was returned to the new list.

```
(map (lambda (a b c) (if (odd? (+ a b c) ) 1 0)) a b c)))
```

## Output

![image](https://user-images.githubusercontent.com/14197773/38048477-5ef1a512-32bd-11e8-914a-179ef48ed91b.png)

## Conclusion
I found that the previous problems on this problem sheet helped me out a lot for this problem. I was able to use what I had learned in the previous problem to help solve and understand this question. I enjoyed doing this problem and once again I am gaining more knowledge of the racket language.

## References

[Reference 1](https://stackoverflow.com/questions/30501411/what-is-definition-of-map-in-racket)

[Reference 2](https://docs.racket-lang.org/guide/lambda.html)

[Reference 3](https://stackoverflow.com/questions/25696063/lambda-in-racket-explained)