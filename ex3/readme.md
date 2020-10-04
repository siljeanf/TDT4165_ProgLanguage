Assignment 3
Author: Silje Anfindsen
-------------------------------------------------------------------------------------------------------------------------
## Procedural abstraction

1a: run in test1.oz, implemented in task1.oz. Use makefile by typing "make run1"

1b: Why are procedural abstractions useful? Give at least two reasons.
Procedural abstractions makes the code easier to read, understand, modify and reuse. For example is there is an error in the code, with procedural abstractions it only needs to be fixed in one place. Another advantage is the opportunity to write more generalized code, removing the need to excess code. 

1c: What is the difference between a procedure and a function?
A procedure is a statement, while a function is an expression, meaning it calculates a result based on input at returns it. The procedure executes a series of commands, not necessarily returning a value even though it could.  
-------------------------------------------------------------------------------------------------------------------------
## Genericity

2a: run in test2and3.oz, implemented in task2and3.oz. Use makefile by typing "make run2"

3a: implemented in task2and3.oz

3b: commented in code in task2and3.oz

3c: run in test2and3.oz, implemented in task2and3.oz. Use makefile by typing "make run2"

3d: For the Sum and Lenght operations, would left fold (a lef-associative fold) and right fold give different results? What about subtractions?
No, as the sum and length operations are commutative meaning it is independent of order of operation and left and right left give the same answer.
For substraction, which is not commutative, a - b will yield different results than b - a in some cases. 
The right/left-fold will change the order of the substracting which affects the result, so it matters.

3e: What is a good value for U when using RightFold to implement the product of list elements?
For product of list elements U, the neutral element, should have value 1 as this is the identity element for the operaiton multiplication.
-------------------------------------------------------------------------------------------------------------------------
## Instantiation

