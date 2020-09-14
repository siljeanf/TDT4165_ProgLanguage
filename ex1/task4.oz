/*a) Write a function that returns the maximum of Number1 and Number2. */
declare %%function is declared global
    % function definition
    fun {Max X Y}
        if X > Y then X else Y end
    end

 %% function application
    {Show {Max 5 9} }
    


/*b) procedure that print maximum number*/
local
  X
  %% procedure definition (proc is local)
  proc {PrintGreater X Y Z}
     if X >= Y then Z = X else Z = Y end
  end
in
  %% procedure application
  {PrintGreater 4 3 X}
  {Show X}
end










