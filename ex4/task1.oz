/*
 * Task 1: generates a stream of odd numbers between S and E in ascending order
 * Param:  lower S and upper E number
 */

declare 


fun {Generate S E}
    if S < E then 
        S | {Generate S+1 E}
    else nil end
end

fun {Filter L Op} L2 in
    case L of H|T then 
        if {Op H} then H|L2
        else nil end
    [] nil then nil
    end
end



fun {Sum L A}
    case L of H|T then {Sum T A+H}
    [] nil then nil  
    end
end

 fun {GenerateOdd S E} Xs Ys S in
    thread Xs = {Generate S E} end
    thread Ys = {Filter Xs fun {$ X} X mod 2 \= 0 end } end
    thread S = {Sum Ys 0} end
    {Browse S}
end

{GenerateOdd 3 10}