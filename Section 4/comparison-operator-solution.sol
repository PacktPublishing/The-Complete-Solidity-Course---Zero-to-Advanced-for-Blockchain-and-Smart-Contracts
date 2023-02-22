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

contract ComparisonOperators {
    
    uint a = 323;
    uint b = 54;
    
    // Only run the function compare so that a is equal to or less than b 
    // otherwise submit the message - This comparison is false!
    
    function compare() view public {
        
        require(a <= b, 'This comparison is false!' );
        
    }
    
}





contract ArithmeticOperators {
    
    function calculator() public pure returns (uint) {
        uint a = 5;
        uint b = 7;
        uint result;
        result = a--;
        return result;
    }
    
    // a & b = 5 % 7 = 5 / 7 + x = R 
    // x is the difference of the amount to make the number equal b
    // 0 * 7 + 5 = R 
    // 0 + R = 5, R = 5 
    
    // Create a function that finds the remainder of 3 % 4  
    // increment and decrement 
  
  // Arithmetic Operators: + - * / % ++ --
  
  // a = 2 b = 12 
  
  // ARITHMETIC EXERCISES 
  // 1. a + b - b + a = ?
  // 2a - 0b = 2(a) = 2(2) = 4 
  
  // 2. a * b * b - 1 = ?
  //  2 * 12 * 12 - 1 = 144 * 2 -1 = 288 - 1 = ? 287 
  
  // 3. b + b++ + a++ = ?
  
  // 12 + (12 + 1) + (2 + 1) = 12 + 13 + 3 = 28
  
  // 4. (b % a) + 3 = ? 
  
  // b = 12, a = 2 
  
  // 12 / 2  = 6Q = 0R + 3 = 3  
    
}