pragma solidity >= 0.7.0 < 0.9.0;

// Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.
// Mapping allows you to save data and add a key that you specifiy and then retrieve that info later
// Similar to struct or an array  -  it is a reference typr 
// in Solidity you can't iterate through a map - you need to store the keys in an array and you can't give size

// get set and delete a value from mapping 

contract learnMapping {
    
    // key and value - key can be string uint or bool - value can be anything
    mapping(address => uint) public myMap;
    
    function getAddress(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
    
    // similar to an array and similar how you'd update an array element
    
    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    
    
        function remove(address _addr) public {
        delete myMap[_addr];
    }
    
    // Exercise 1. Deplay the mapping contract and create some keys as addresses and set those keys to unique values 
    // 2. Remove all the addresses and check to see their updated value.
    
     // Mapping Assignment:
    // 0. Create a unique data type as a struct called Movie and give it the string properties: title and diretor.
    // 1. Create a map called movie which takes a uint as a key and Movie as a value 
    // 2. create a function called addMovie which takes three inputs, movie id, title and director which 
    // assigns a value of an integer to a movie added back to the movie map. It should include a title and director name.
    // 3. Deploy the contract and update the movie information to the movie map with our favorite movies! 
    
    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;
    
    struct Movie {
      string title;
      string director;
    }
    
    function addMovie(uint id, string memory title, string memory director) public {
            movie[id] = Movie(title, director); 
    }
    
        function addMyMovie(uint id, string memory title, string memory director) public {
            myMovie[msg.sender][id] = Movie(title, director); 
            // msg.sender is a global variable accessible throughout solidity which captures the address that
            // is calling the contract
    }
    
    
    // NESTED mapping (maps within maps)
    // what if you wanted to store movies that belong to a certain person, thing or address ***very important***
    // anther example - allow one address to spend on behalf of another address (ERC20 tokens)
    // ex: mapping(key =>mapping(key2 => value2)) nestedMap
    
}