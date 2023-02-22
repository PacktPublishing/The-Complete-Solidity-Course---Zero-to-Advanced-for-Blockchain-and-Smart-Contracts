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