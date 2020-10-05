/**
 * Task 5: 
 * @Summary: This functions builds a datastructure on demand, making it possible to implement infinite lists, 
 * as you can use the function that returns to call for a
 * new function until you reached the desired value.  
 * @Param: StartValue for starting element of list
 * @Return: a touple consisting of the input param StartValue and an anonymous function which is incrementing the Startvalue by 1
 */


 fun {LazyNumberGenerator StartValue}
    touple(StartValue fun {$} {LazyNumberGenerator StartValue+1} end)
end