pragma solidity >= 0.7.0 < 0.9.0;

 // WHAT ARE ARRAYS? :) 
 // Array is a data structure, which stores a fixed-size sequential collection of elements of the same type. 
 //An array is used to store a collection of data, 
 // but it is often more useful to think of an array as a collection of variables of the same type.
 
 // 1. How To Write An Array
 // 2. pop, push, and length methods
 // 3. remove elements from array

contract learnArrays {
    
  uint[] public myArray; /// add 1 2 3 4 
  uint[] public myArray2;
  uint[200] public myFixedSizedArray;
  
  // The push() method adds one or more elements to the end of an array and returns the new length of the array.
    
    function push(uint number) public {
        myArray.push(number);
    }
    
    // The pop method removes the last element from an array and returns that value to the caller.
    function pop() public {
        myArray.pop();
    }
    
    // length is a string property that is used to determine the length of a string
    
    function getlength() public view returns (uint) {
        return myArray.length;
    }
    
    function remove(uint i) public {
        delete myArray[i];
        // when you delete in your array the length remains the same
        // i = 0 = 1, 2 = 1, 3 = 2  
        
    }
    
    // Exercise create a function that can fully remove an item from an array
    // 1. Create an Empty array called changeArray
    // 2. Create a function called removeElement which sets the index argument of the array to the last element in the array
    // 3. remove the last index from that function with the pop method
    // 4. Create a function called test which pushes 1 2 3 4 into changeArray
    // 5. remove the element 2 from the array when the contract is called
    
    uint[] public changeArray;
    
    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    } 
    
    function test() public {
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
    }
    
    function getArray() public view returns (uint) {
        return changeArray.length;
}
}