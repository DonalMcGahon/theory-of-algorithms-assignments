# **Problem Sheet Question 4**

## Problem 4
![image](https://user-images.githubusercontent.com/14197773/37003355-b01a09da-20c4-11e8-9ec5-3b4916044a4f.png)


## Research on Question
For this question, we were allow use the [combinations](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29) built in function. So I decided to look up what exactly this function does and how I would be able to interpret it into my solution. I then researched how to add the elements of a list together so I would be able to answer this problem.

## Design and Solution
For the design I first found a way of adding all the elements of a list together. I achieved this with the following code below.

```
(define (my+ list)
  (for/sum ((i list))
    i))
```
I then had to find a way of looping through all the combinations of the list and though my research on the [combinations](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29) built in function I was able to find a way. Once looped though I checked, using my function to add all elements in a list together, if the list when added equals 0, I would display that output. Otherwise display nothing. Below is the code I used to achieve this.

```
  (define (sublsum list)
    (for ([allcombinations (in-list (combinations list) )])
      (if(= 0 (my+ allcombinations)) (displayln allcombinations)
       '())))
```

## Output
![image](https://user-images.githubusercontent.com/14197773/37035725-58a7a4f6-2145-11e8-8497-fa956e3446e4.png)

## Conclusion
I found this problem very interesting and I feel like I learnt a lot from it. I now know a lot more about the combinations built in function and I hopefully will be able to use that function in future problems.

## References
[Reference 1](https://stackoverflow.com/questions/41512010/sum-items-in-list-racket)

[Reference 2](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29)