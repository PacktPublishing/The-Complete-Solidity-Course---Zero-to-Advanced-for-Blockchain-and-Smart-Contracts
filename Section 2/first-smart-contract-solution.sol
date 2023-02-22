pragma solidity >= 0.7.0 < 0.9.0;

contract WelcomeToSolidity {
   constructor() public{
   }
   
   // is adding two integers
   function getResult() public view returns(uint){
      uint a = 1;
      uint b = 14;
      uint result = a + b;
      return result;
   }
}

// Exercise: Change the function called getResult in our WelcomeToSolidity contract so that the output
// returns 15 

// IDE:: Tools provided by an IDE include a text editor, a project editor, 
// a tool bar, and an output viewer. 
// IDEs can perform a variety of functions. Notable ones include write code, compile code, debug code, and monitor resources. 

// Solidity is a curly-bracket language. 
// It is influenced by C++, Python and JavaScript, and is designed to target the Ethereum Virtual Machine (EVM)
