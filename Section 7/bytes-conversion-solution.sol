pragma solidity >= 0.7.0 < 0.9.0;

// WHAT ARE UINTS ???

// The uint data type is an unsigned integer, meaning its value must be non-negative. 
// There’s also an int data type for signed integers.

// Note: In Solidity, uint is actually an alias for uint256, a 256-bit unsigned integer. 
// You can declare uints with less bits — uint8, uint16, uint32, etc.. 
// But in general you want to simply use uint except in specific cases

// Impress your interviewer - smart contracts that are cost efficient - 

contract learnConversions {

// uint defaults uint256 
//  uint (alist for uint256) is a unsigned integer which has:
//    minimum value of 0
//    maximum value of 2^16-1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935 //78 decimal digits
 uint number = 2;
    
// Conversion to smaller type costs higher order bits.    
uint32 a = 0x12345678;
uint16 b = uint16(a); // b = 0x5678

// Conversion to higher type adds padding bits to the left.
uint16 c = 0x1234;
uint32 d = uint32(c); // d = 0x00001234 

// What is the cost? 
// Conversion to smaller bytes costs higher order data 
bytes2 e = 0x1234;
bytes1 f = bytes1(e); // f = 0x12

// What does this add? 
// Conversion to larger bytes adds padding bits to the right
bytes2 g = 0x1234;
bytes4 h = bytes4(g); // h = 0x12340000
}