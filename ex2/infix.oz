% postfix notation: 12+
% infix notation: 1+2

/*
 * Task 3a & 3b: 
 When you encounter a non-operator/number on
the input stack, move it to the expression stack.
When you encounter an operator on the input stack, remove
expressions from the expression stack and construct the string, 
and push the string onto the expression stack
 * Param:  list of tokens: numeral(‘2’), numeral(‘4’), numeral(‘6’), operator(‘-’),
 * Return: expression stack
 */


fun {Infix Tokens}
    Operations = operator('plus':'+'
		 'minus':'-'
		 'multiply':'*'
		 'divide':'/')

    fun {InfixInternal Tokens ExpressionStack}
            case Tokens of nil then ExpressionStack.1 % if Token is empty return first element of expression stack
            % if token is number then insert number in ExpressionStack and contine iterate input Token
            [] number(Number)|Tokens then 
            {InfixInternal Tokens Number|ExpressionStack} 
            % if token is operator then insert a string of infix-notation of the two last numbers in the Expression stack with current operator
            [] operator(type:Operator)|Tokens then
                Top|NextToTop|Rest = ExpressionStack in
                {InfixInternal Tokens "("#NextToTop#' '#Operations.Operator#' '#Top#")"|Rest}
            %if invalid token, skip it       
            else 
                _|Rest = Tokens in
                {InfixInternal Rest ExpressionStack}
            end
    end
in
    try {InfixInternal Tokens nil}
    catch Ex then raise Ex end
    end
end



