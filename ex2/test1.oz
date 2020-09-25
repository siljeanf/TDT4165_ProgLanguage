functor
import
   System(show:Show)
   Application(exit:Exit)
define
    \insert mdc.oz
    

    %sample of lex-string
    Str = "1 2 + 3 *"
    Str2 = "1 2 3 +"
    Str3 = "1 2 3 ^ +"

    %test of task 2a
    {Show {Lex Str}}

    %test of task 2b
    {Show {Tokenize {Lex Str3}}}

    % test of task 2c
    {Show{Interpret {Tokenize {Lex Str3} } } }


     {Exit 0}
    
end