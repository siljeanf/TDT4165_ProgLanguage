Assignment 1
Author: Silje Anfindsen
-----------------------------

Task 1 and task 2
- can be found in main.oz and test.oz

Task 3
a) Why do you think showInfo can print B before it is assigned? Why is this behaviour useful? What does the statement B = A do?
- A thread makes the code line run concurrently with the current thread. The current thread / the rest of the program resumes immediately with the next statement untill the thread can be run, meaning B is declared. The statement B=A bounds the variable B to the same value as A. 

Task 7
run task 7 in test.oz