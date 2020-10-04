functor 
import
    System
    Application

define
    \insert task2and3.oz

    L=[1 2 3 5 6 7 8]
    in

        % Task 2
        {System.showInfo {Sum L}}

        % Task 3c
        {System.showInfo {SumGeneric L}}
        {System.showInfo {LengthGeneric L}}
        
    {Application.exit 0}

end
