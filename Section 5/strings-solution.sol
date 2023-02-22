pragma solidity >= 0.7.0 < 0.9.0;


// Solidity supports String literal using both double quote (") and single quote ('). 
// It provides string as a data type to declare a variable of type String.

//values that are made up of ordered sequences of characters, such as "hello world". A string can contain any sequence of characters, 
// visible or invisible, and characters may be repeated. 

contract learnStrings {   
    
    string greetings = 'hello!'; // hello is a string literal 
    
     // € watch for special characters - use if statement
     // \ skip characters 
     // "" double characters 
     // \n for a new line 
    

    function sayHello() public view returns(string memory) {
        
         greetings;
        
        // memory: much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls. 
        //The Solidity Smart Contract can use any amount of memory during the execution 
        // but once the execution stops, the Memory is completely wiped off for the next execution.
    }
    
    function changeGreetings(string memory change) public {
         greetings = change;
    }
    
    
    
    // strings are too expensive computationally to get length in solidity so you can't do it like other languages - utf storing (solidity removes the process)
    
    function getStringLength() public view  returns(uint) {
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
        // greetings.length;
    }
    
    // how can we get the length of a string in solidity then?? (convert to bytes)
    
    
    // Exercises with Strings:
    
    // 1. create a string called favoriteColor
    // 2. set the favorite color of the string favoriteColor to blue 
    // 3. create a function which returns the string literal of favoriteColor
    //4 . create a function which changes the favoriteColor string literal from blue to your favorite color.
    //5 . create a function which can return how many characters there are in the string favorite color 
    
    string favoriteColor = 'blue';
    
    function getColor() public view returns (string memory) {
        return favoriteColor;
    }
    
    
    function changeColor(string memory _color) public {
        favoriteColor = _color;
    }
    
    function getColorLength() public view returns(uint) {
        bytes memory stringToBytes = bytes(favoriteColor);
        return stringToBytes.length;
    }
    
}