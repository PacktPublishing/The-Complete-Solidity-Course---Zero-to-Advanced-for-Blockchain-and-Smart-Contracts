pragma solidity >= 0.7.0 < 0.9.0;

// OPERATORS - 

//An operator in a programming language is a symbol that tells the compiler o
//or interpreter to perform specific mathematical, relational or logical operation and produce final result.



// Arithmetic Operators: + - % / 

// Comparison Operators: Operators which compare operands 
// Ex: less than: <, greater than: >, equality: ==, false equality: !=
//      less than or equal to: <=, greater than or equal to: >= 

// Logical Operators: && (Logical AND), || (Logical OR), ! (Logical NOT)
// Bitwise Operators: & (Bitwise AND), | (BitWise OR), ^ (Bitwise XOR), 

// a < b && b > c  - logical AND (Both conditions must be satisfied)
// a < b || b > c  - logical AND (Either condition must be satisfied)
// !(a < b) = logiacl not

//  Assignment Operator  a = b (a is assigned the value of b )

contract AssignmentOperator {
    uint b = 4;
    uint a = 3;
 
    function assign() public view returns(uint) {
            uint c = 2;
 
            // return c + c + b; // rewrite this result in assignment form?
            // return c = c + c + b; 
            return c += c + b; // += is a short haded way to write x * x * y = x *= y
    }
    
}

// Final Operators Exercise 
// 0. create a contract called final exercise (FinalExercise)
// 1. initialize 3 state variables a, b, f 
// 2. assign each variable the following: a should equal 300, b should equal 12,
// and f should equal 47
// 3. create a function called finalize that is public and viewable which returns 
// a local variable d 
// 4. ininitialize d to 23 
// 5. return d in short handed assignment form to multiply itself by itself and then 
// subtracted by b 
// 6. bonus make the function conditional so that it will only return the multiplcation if
// a is greather than or equal to a and b is less than f otherwise d should return 23



// Solution
contract FinalExercise {
    uint a = 300;
    uint b = 12;
    uint f = 47;
    
    function finalize() public view returns(uint) {
        uint d = 23;

        if(a > b && b < f) { 
        d *= d;
        return d - b;
        } else {
            return d;
        }
    }
}

contract LogicalOperators {
    uint a = 17;
    uint b = 32;
    
    function logic() public view returns(uint) {
        uint result = 0;
        if(b > a && a != b) {
            result = a * b;
        }
        return result;
    }
    
    // Exercise: 
    // 1. Create a function which will multiply a by b and divide the result by b
    // 2. Only return the multiplication of the function if b is greater than a AND a does not equal b 
    // 3. initialize a = 17 and b to 32 
    
    
}