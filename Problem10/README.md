# **Problem Sheet Question 10**

## Problem 10

![image](https://user-images.githubusercontent.com/14197773/38048822-6f631c54-32be-11e8-9636-169d552aca04.png)


## Research on Question
After I read the question I noticed that I will have to be able to create a square function. So I looked up ways of creating a sqaure function and found a few ways to do it. The easiest way I could find to create a squared function in racket was to do the following - `(define (sqre s)(* s s))`. What this is doing is defining a function 's' that will then multiple itself by itself, creating a squared function. I found this information though this stack overflow [answer](https://stackoverflow.com/a/26515457/9343831e).


## Design and Solution

After doing reseach on the question, I started to set up the problem as required. I was asked to write a function called 'lstq' that takes as arguments two lists 'l' and 'm' of equal length and containing numbers. So I first defined two functions 'a' and 'x' as null and 0.

```
(define a null)
(define x 0)
```

I followed on to define a list function with 2 elements 'l' and 'm' `(define (lstq l m)`.
Then I created the square root function called 's' `(define (sqre s)(* s s))`,
After this I created a function called sumL with value 'd' `(define (sumL d)`.
I first check to make sure that sumL is not null, and if it is not null then I take the 2nd element, then take the 1st element of the list and repeat until crd reaches the end of the list.

```
(if (null? d)
    x ; if sumL is null return x
    (+ (car d)(sumL (cdr d)))))
```

After, I check to make sure that the two lists 'l' and 'm' are of equal length. Also check to make sure that they are both not null.

```
(if (not (= (length l)(length m)))
    a ; if the length of l & m are not equal, return d
    (if (null? l)
        x ; if l is null, return x
        (if (null? m)
            x
```

Otherwise, I take the 2nd element in both lists and subtract them. The result is then squared using the sqre function that was defined. The sumL function then adds each squared result and returns the sum.

```
(sumL (list (sqre (- (car l)(car m))) (lstq (cdr l)(cdr m))))))))
```


## Output

![image](https://user-images.githubusercontent.com/14197773/38093207-2be64f60-3362-11e8-88e2-5ebd2124e411.png)

## Conclusion

## References