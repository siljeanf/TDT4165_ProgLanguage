functor 
import
    System
    Application

define
    \insert task5.oz

        % Task 5
        {System.showInfo {LazyNumberGenerator 0}.1 }
        {System.showInfo {{LazyNumberGenerator 0}.2}.1 }
        {System.showInfo {{{{{{LazyNumberGenerator 0}.2}.2}.2}.2}.2}.1 }
        
    {Application.exit 0}

end


