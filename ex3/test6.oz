functor 
import
    System
    Application

define
    \insert task6.oz
     L=[1 2 3 5 6 7 8] in

        % Task 6a
        {System.showInfo {TailRecursiveSum L 0 } }
        
    {Application.exit 0}

end