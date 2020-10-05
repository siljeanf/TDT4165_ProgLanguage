/**
 * Task 4: Calculates f(x) of a quadratic equation by using an anonymous function inside function call
 * Param: coefficients of 2.order eq. Ax^2 + Bx + C
 * Return: a function on the form f(x) where x is parameter
 */

 fun {Quadratic A B C}
    fun {$ X} 
        A*X*X + B*X +C 
    end
 end