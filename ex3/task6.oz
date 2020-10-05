/**
 * Task 6a: 
 * @Summary: A Tail recursive version of the Sum function from task 2.  
 * @Param: List and current sum, starting at 0
 * @Return: Sum values of each element of list
 */

fun {TailRecursiveSum List Sum} 
    case List of Head|Tail then 
        {TailRecursiveSum Tail Sum+Head}
    else
        Sum
    end
end