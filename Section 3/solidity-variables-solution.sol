pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing program in any language, you need to use various variables to store various information. 
Variables are nothing but reserved memory locations to store values. 
This means that when you create a variable you reserve some space in memory. */

// Variables: Variables are used to store information to be referenced and manipulated in a computer program.

// pseudo code example of storing information into variables 
// store-owner = 300 - integer 
// chocolate-bar = 10  - integer
// totalValue = store-owner + chocolate-bar = 310 
// totalValue = 310 - integer

// Types: Boolean - Keyword: bool - Value: true/false
// Integer - Keyword - uint - Value - Signed and unsigned integers of varying sizes
// String - Keyword - string - data values that are made up of ordered sequences of characters

// LEARNING VARIABLES AND TYPES 

// Three main types of variables: Booleans, Integers, & Strings

// lieDetector = boolean to check whether what they say is true or false 
// walletAmount = integer that would hold the amount 
// errorMessageText = string that would say 'Error! There has been a mistake! :('
// '' ""

contract learnVariables {
    
    // all our solidity code goes here
 
    uint chocolateBar = 10;
    uint storeOwner = 300;
    bool lieDetector = true;
    string errorMessageText = "Error! There has been a mistake!"; 
    
    uint wallet = 500;
    bool spend = false;
    string notifySpend = 'you have spent money';
    
    
}

// Exercise 1. create a new variable called wallet as an integer 
// 2. create a boolean called spend
// 3. create a string give it the name notifySpend
//4. initialize the wallet to 500 
//5. set the value of spend to false 
//6. add the string literal (the string value ) 'you have spent money' to notifySpend 
