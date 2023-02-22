pragma solidity >= 0.7.0 < 0.9.0;

/* 

FUNCTIONS: 

A function is a group of reusable code which can be called anywhere in your program. 
This eliminates the need of writing the same code again and again. 
It helps programmers in writing modular codes. Functions allow a programmer 
to divide a big program into a number of small and manageable functions.

Like any other advanced programming language, Solidity also supports all the features necessary to write modular code using functions. 
This section explains how to write your own functions in Solidity.

pseudo thought code experiment
door - vairable (stored information)
remoteControlOpen - open the door - function
remoteControlClose - close the door - function

// function take inputs of information and produce outputs

*/

contract learnFunctions {
    
   //  function-name(parameter-list) scope returns() {
   //statements }
   
   function remoteControlOpen(bool closedDoor, bool openDoor ) public returns(bool) 
   {
       // all the code of the function - the script - the statement 
   }
   
    // local variables will superceed state variables    
    
   uint a = 45; // state variable
   // If we know a is always 45 - then it's smart to just instantiate a = 45 as a state variable
   
      // create a function that can add up two variables
   function addValues() public view returns (uint) {
       // all the variables that we write in the function remains localized in the function
       // uint a = 2; // local variable 
       uint b = 3;
       uint result = a + b;
       return result;
   }
   
   
   function addNewValues() public view returns (uint){
      //  uint a = 1;
       uint b = 5;
       uint result = a + b;
       return result;
   }
   
   // Exercise: 1. Create a function in the learnFunctions contract called multiplyCalculator
   // 2. Add two parameters to the function a & b and set them as integers.
   // 3. Grant the function public visibility as well as viewing capability for the IDE.
   // 4. Return an integer for the function
   // 5. Create a variable result that contains the logic to multiply a and b 
   // 6. Return the result 
   // 7. Compile and deploy your very first dApplication and test out the results!! 
   
   
   uint b = 4; 
   
    function multiplyCalculatorByFour(uint a) public view returns (uint) {
        uint result = a * b;
        return result;
    }
    
        function divideCalculatorByFour(uint a) public view returns (uint) {
        uint result = a / b;
        return result;
    }
   
}