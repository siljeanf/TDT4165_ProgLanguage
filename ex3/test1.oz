functor 
import
    System
    Application

define
    \insert task1.oz

    RealSol1 Root11 Root12
    RealSol2 Root21 Root22 
    in
        {QuadraticEquation 2.0 1.0 ~1.0 RealSol1 Root11 Root12}
        {QuadraticEquation 2.0 1.0 2.0 RealSol2 Root21 Root22}

        % Task 1a
        {System.showInfo "X1 = " # Root11 # " X2 = " # Root12 # " RealSol: " # if RealSol1 then "true" else "false" end}
        {System.showInfo "X1 = " # Root21 # " X2 = " # Root22 # " RealSol2: " # if RealSol2 then "true" else "false" end}

        
    {Application.exit 0}

end
