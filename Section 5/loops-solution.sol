pragma solidity >= 0.7.0 < 0.9.0;


// Loops allow you to iterate through data and take functional action depending on the data

// A "For" Loop is used to repeat a specific block of code a known number of times. 
// For example, if we want to check the grade of every student in the class, we loop from 1 to that number.


contract loopContract {
    
    // a list of number ranging from 1 to 10  
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];
    
    // Ex: if we have 4 how many numbers in our list can be a multiple (answer should be 2)
    // A loop that acts as a multiple checker in our numbersList
    
    function checkMultiples(uint _number) public view returns (uint) {
        uint count = 0;
        // 3 part statement of a for loop
        // 1. initialize start of loop
        // 2. determine length of loop
        // 3. to direct the index after each turn 
        for(uint i=1; i < numbersList.length; i++) {
            // logic for the loop in here
            if(checkMultipleValidity(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }

    
    // create a function that can check if two numbers are divisible by each other - or are they
    // multiples of each other 
    
    // 4 and 2 -  return true 
    // 3 and 5 - return false 
    
    function checkMultipleValidity(uint _num, uint _nums) public view returns (bool) {
        // modulo operator = % the remainder value of R from integers
        // take two numbers and if they return modulo of zero then the sec
        // number is a multiple of the first 
        if(_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }
    
}

contract myLoopingPracticeContract {
    
    uint [] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,26];
    uint [] numbersList = [1,4,34,56];
    
    function numbersListLoop(uint userNumber) public view returns (bool) {
            bool numberExists = false;
        for(uint i = 0; i < numbersList.length; i++) {
            if(numbersList[i] == userNumber) {
                numberExists = true;
            }
        }
        return numberExists;
    }

// always going to be an even number: number % 2 == 0

function evenNumbersLoop() public view returns (uint) {
    uint count = 0;
    for(uint i = 0; i < longList.length; i++) {
        if(longList[i] % 2 == 0) {
            count++;
        }
    }
    return count;
}

}
// Looping Practice: 

//1. create a contract myLoopingPracticeContract and place all the following code within:
// 2. create a list that ranges from 1 to 20 called longList
// 3. create a list called numbersList of the following numbers: 1, 4, 34, 56
// 4. create a function that loops through numbersList and returns a true value if the number
//  that the user inputs exists in the list otherwise it should return false 
// 5. create a function that loops trhough and returns how many even numbers there are in the long list
