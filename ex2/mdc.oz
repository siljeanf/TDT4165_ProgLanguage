/*
 * Task 2a: separate element in a string
 * Param:  String
 * Return: List of lexemes
 */

fun {Lex Str}
        {String.tokens Str & }
end

/*
 * Task 2b: set up records of lexemes on the form
 * Param:  list of lexemes: ‘2’, ‘4’, ‘6’, ‘-’
 * Return: list of records: number(1), operator(type:plus)
 */

fun {Tokenize Lexemes}
    case Lexemes of nil then nil    %if Lexemes is empty return nil
    [] Head|Tail then Token in %if Lexeme is a list, check head 
        if Head == "+" then Token = operator(type:plus)           
        elseif Head == "-" then Token = operator(type:minus)
        elseif Head == "*" then Token = operator(type:multiply)
        elseif Head == "/" then Token = operator(type:divide)
        elseif Head == "p" then Token = cmd(print)   
        elseif Head == "d" then Token = cmd(duplicate)      
        elseif Head == "i" then Token = cmd(flip)  
        elseif Head == "^" then Token = cmd(inverse)
        elseif {String.isFloat Head} then Token = number({String.toFloat Head})
        else Token = number({String.toInt Head})                  
        end
        Token|{Tokenize Tail} %using tail to recursively return tokens of lexemes
    end 
end



/*
 * Task 2c: executes the operators on the stack operands
 * Param:  list of records: number(1), operator(type:plus)
 * Return: stack / after operators are executed, operands pulled and result is pushed
 */

fun {Interpret Tokens} 
   %record for operators, accessed by left side of colon 
    Operations = op(
        plus:Number.'+'
        minus:Number.'-'
        multiply:Number.'*'
        divide:Float.'/'
    )

    % Commands = cmd(
    %     print:proc {$ Top|Rest} {Show number(Top)} end
    %     duplicate:fun {$ Top|Rest} Top|Top|Rest end
    % )


    fun {Iterate Stack Tokens}
        case Tokens of nil then Stack           %Tokens (input) is empty, return Stack
        [] number(Int)|Tail then                %if head is number, add to Stack
            {Iterate Int|Stack Tail}         
        [] operator(type:Op)|Tail then          %if head is operator
            Int1|Int2|Rest = Stack in           %get first two element of the stack, perform operation, push result to stack
            {Iterate {Operations.Op Int2 Int1}|Rest Tail}   
        [] cmd(Command)|Tail then
         if Command == print then
            {Show {List.reverse {Tokenize Stack}}}
            {Iterate Stack Tail}
         elseif Command == duplicate then
            {Iterate Stack.1|Stack Tail} 
        elseif Command == flip then
            Top|Rest = Stack in
            {Iterate ~Top|Rest Tail}
        elseif Command == inverse then
            Top|Rest = Stack in
            {Iterate 1.0/Top|Rest Tail}
         else
            {Iterate Stack Tail}
        end
        end
    end
in
  % return the stack tokenized and reversed 
  {List.reverse {Tokenize {Iterate nil Tokens}}}


end 

