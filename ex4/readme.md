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

4: run in test4.oz, implemented and commented in task4.oz. Use makefile by typing "make run4"

-------------------------------------------------------------------------------------------------------------------------
## Embedding

5a: run in test5.oz, implemented and commented in task5.oz. Use makefile by typing "make run5"

5b: Give a high-level desciption of your solution and point out any limitations you find relevant
The function builds a datastructure, in this case a hierachy of tuples. This makes it possible to count endlessly as it returns a tuple  with a call to itself incremented by 1.
Limitations: In order to get each new element of the tuple of tuples you have to make a new funciton call. For example you this is not a valid command {LazyNumberGenerator 0}.2.1, but instead you have to write: {{{LazeNumberGenerator 0}.2}.1}

-------------------------------------------------------------------------------------------------------------------------
## Tail Recursion

6a: Is your Sum function from Task 2 tail recursive? If yes, explain why. If not, implement a tail recursive
version and explain how your changes made it so.
The Sum function in Task 2 is recursive, but not tail recursive as it waits for the rhs expression to evaluate before adding it to the head. In the file Task6.oz a tail recursive version of the function is implemented. This new implementation is waiting for the recursive calls to evaluate itself by passing the accumulating sum as an argument untill it gets to the end of the list.

6b: What is the benefit of tail recursion in Oz?
The tail recursive functions can be optimized by the compiler. As the recursive call is the last statemenet in the current function, there is no need to store the function adress in the stack. Thus the function calls can be faster.

6c: Do all programming languages that allow recursion benefit from tail recursion? Why/why not?
At least all functional programming languages benefit from tail recursion from the reason considering stack calls as explained above. In order to answer the question for all programming languages i think it depends on the compiler and implementation of the language. 

-------------------------------------------------------------------------------------------------------------------------
