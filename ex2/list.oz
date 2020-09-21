
/**
 * Task 7a: This function calls itself iteratively as long as the list has a tail. At the end it sums up the length of the list
 * Param: List
 * Return: Length of list (integer)
 */
declare
fun {Length List}
  case List of _|Tail then
    1+{Length Tail} %counting up length and removing head of list
  else %if list is empty / no pattern match
    0
  end
end

/**
 * Task 7b: Makes a list of the first count elements
 * Param: List 
 * Param: Count - nr of elements to create new list
 * Return: List of the first Count elements 
 */

fun {Take List Count}
%return nil if list is empty 
  if {And Count > 0 List \=nil}  then
    List.1|{Take List.2 Count-1}
  else
    nil
  end
end

/*
 * Task 7c: Remove head count nr of times
 * Param: List 
 * Param: Count - nr of elements to remove
 * Return: List without the first Count elements
 */

 fun {Drop List Count}
    if {And Count > 0 List \=nil}  then
        {Drop List.2 Count-1} %removing head of list
    else 
        List
  end
  end


/*
 * Task 7d: Add two lists together by traversing List1 and then adding List2 at the end of List1
 * Param:  List to append on
 * Param:  List to append with
 * Return: All elements of List1 followed by elements in List2
 */

fun {Append List1 List2}
    case List1 of H1|T1 then
        if {And H1 \=nil T1==nil} then  %at end of List1
            H1|List2                    %extend List1 with List2 
        else                            
            H1|{Append T1 List2}        %preceed traversing List1
        end
    end
end

/*
 * Task 7e: checks if element is present in list
 * Param:  List
 * Param:  Element to search for
 * Return: True is element is present
 */

fun {Member List Element}
    case List of H|T then
        if H==Element then
            true
        else
            {Member T Element}
        end
    else
        false
    end
end


/*
 * Task 7f: finds position of given element in list
 * Param:  List
 * Param:  Element to search for
 * Return: position of element (assumes the element is present)
 */

fun {Position List Element}
    if List.1 == Element then   %Found the element
       1
    else
        if List.2 \= nil then   %check if tail is non-empty     
            local CurrentPos = {Position List.2 Element} in %Keep track of position of element
                if CurrentPos \= nil then 
                    1+CurrentPos
                else
                    nil         %did not find element
                end
            end
        else nil end            %tail is empty
    end
end