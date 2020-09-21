functor
import
   System(show:Show)
   Application(exit:Exit)
define
    \insert mdc.oz

    %sample of lex-string
    Str = "1 2 + 3 *"

    %test of task 2a
    {Show {Lex Str}}

    %test of task 2b
    {Show {Tokenize {Lex Str}}}

    % test of task 2c
    {Show{Interpret {Tokenize {Tokenize {Lex Str}}}}}


     {Exit 0}
    
end