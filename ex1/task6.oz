% task 6: Recursion for factorial number

declare
fun {Factorial N}
    if N==0 then 1 else N*{Factorial N-1} end
end

{Show {Factorial 5}}
    

