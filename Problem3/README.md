# **Problem Sheet Question 3**

## Problem 3

Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.
![image](https://user-images.githubusercontent.com/14197773/36066558-93e655da-0ea3-11e8-96eb-84b36a4f6f7c.png)

---

## Research on Question
After a short while of doing some research on the question, I realised that I needed to create a function that appends one list on the end of another list. I found how to do this form this [reference](https://courses.cs.washington.edu/courses/cse341/98sp/scheme/recursion.html). I then researched how to rotate a list of numbers to the left from this [reference](https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme) and I adapted the code I found to work with my program. Following this I found a method for removing the last value of the list and then appending that value to the rcycle list.

## Design and Solution
After doing my reseach on the question I first created a function to add one list onto another list. This was to allow me to achieve returing the list cyclically shifted one place to the left. I then created a function that removed the last element of a list which allowed me to then cyclically shift the list one place to the right. I finally displayed the lists that cyclically shift one place to the right and the left.

## Output
![image](https://user-images.githubusercontent.com/14197773/37000024-dda2e300-20b9-11e8-9419-47d94bd774e3.png)


## Conclusion
I found the task good to begin with, but I did run into a few problems while trying to create the program. But after doing some more research online I was able to find resources that helped me get the program up and running.

## References
[Reference 1](https://courses.cs.washington.edu/courses/cse341/98sp/scheme/recursion.html)

[Reference 2](https://stackoverflow.com/questions/13046017/rotate-a-list-to-the-left-in-scheme-racket)

[Reference 3](https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme)