/*
 * Task 1a: find real solutions to a 2.order equation if not there is no real solutions it return false
 * Param:  Coefficient Ax^2+Bx+C=0, Empty variables to store bolean if it is real solution and solutions
 */

proc {QuadraticEquation A B C ?RealSol ?X1 ?X2}
Discriminant = B*B-4.0*A*C
in
  if Discriminant > 0.0 then
    RealSol = true
    X1 = (~B+{Sqrt Discriminant})/ (2.0*A)
    X2 = (~B-{Sqrt Discriminant})/ (2.0*A)
  else
    RealSol = false
    X1= nil 
    X2= nil 
  end
end
