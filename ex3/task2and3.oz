
/**
 * Task 2: This function calls itself iteratively as long as the list has a tail. At the end it sums up the length of the list
 * Param: List
 * Return: Sum of value of each element in List
 */

fun {Sum List}
  case List of Value|Tail then
    Value + {Sum Tail}                 %counting up value of head and removing it of the list
  else                                 %if list is empty / no pattern match
    0
  end
end

fun {Length List}
  case List of _|Tail then
    1+{Length Tail}                 %counting up length and removing head of list
  else                              %if list is empty / no pattern match
    0
  end
end

/**
 * Task 3a and b: Generic function for Sum and Length which goes through a list recursively and, through the use
of a combining operation Op, accumulates and returns a result
 * Param: List, Operation Op, neutral element U
 */

fun {RightFold List Op U}                                 % function definition
    case List of nil then U                               % if input List is empty, return the neutral element 
    [] Head|Tail then {Op Head {RightFold Tail Op U}}     % if not we can seperate list into Head|Tail and recursively call the function after exection of operation on Head
    end                                                   % marks end of case
end                                                       % marks end of function

/**
 * Task 3c: Implementation of Sum and Length using Rightfold
 */

fun {LengthGeneric List}
    {RightFold List fun {$ X Y} 1+Y end 0} % operation given as function argument
end

fun {SumGeneric List} 
    {RightFold List fun {$ X Y} X+Y end 0} 
end