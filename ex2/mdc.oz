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
    [] Lexeme|Lexemes then Token in %if Lexeme is a list, check head 
        if Lexeme == "+" then Token = operator(type:plus)           %operator
        elseif Lexeme == "-" then Token = operator(type:minus)
        elseif Lexeme == "*" then Token = operator(type:multiply)
        elseif Lexeme == "/" then Token = operator(type:divide)        
        else Token = number({String.toInt Lexeme})                  %number
        end
        Token|{Tokenize Lexemes} %using tail to recursively return tokens of lexemes
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

    fun {Iterate Stack Tokens}
        case Tokens of nil then Stack           %token is empty, return Stack
        [] number(Integer)|Tail then            %if head is number, add to Stack
        {Iterate Integer|Stack Tail}         
        [] operator(type:Op)|Tail then          %if head is operator
        Int1|Int2|Rest = Stack in               %get first two element of the stack, perform operation, push result to stack
        {Iterate {Operations.Op Int2 Int1}|Rest Tail}   
        end
    end
in
  % return the calculation
  {Iterate nil Tokens}
end 

