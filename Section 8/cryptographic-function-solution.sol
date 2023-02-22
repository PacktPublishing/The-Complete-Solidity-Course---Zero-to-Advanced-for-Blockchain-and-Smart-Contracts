pragma solidity >= 0.7.0 < 0.9.0;

/*

A cryptographic hash function (CHF) is a mathematical algorithm that maps data of arbitrary size 
(often called the "message") to a bit array of a fixed size (the "hash value", "hash", or "message digest"). 
It is a one-way function, that is, a function which is practically infeasible to invert or reverse the computation.

Solidity provides inbuilt cryptographic functions as well. Following are important methods:

keccak256(bytes memory) returns (bytes32) − computes the Keccak-256 hash of the input.

sha256(bytes memory) returns (bytes32) − computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes20) − compute RIPEMD-160 hash of the input.

Keccak is a leading hashing function, designed by non-NSA designers. Keccak won NIST competition to become the official SHA3
Keccak is a family of cryptographic sponge functions and is designed as an alternative to SHA-256

Exercise (Secure the Random Functionality From Miner Manipulation): 

1. Create a contract Oracle with an address datatype called admin and a public integer called rand. 
2. Create a constructor and set the admin to the current caller. 
3. Write a function which takes the input of an integer and sets the state variable rand to that integer. 
4. Require that the current caller must equal the admin.
5. Set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract (hint calling contracts)
6. Write a constructor in the GenerateRandomNumber contract which sets the oracle to a deployment address of the Oracle 
7. Modify the hash return so that the miners greatly lesson control manipulation to the random generation. 
8. Successfully deploy and test the results.

Good luck and may the ethereum be with u!!! ;) 


*/


// Oralce dynamic feeds 
// A database management system is not only used for storing the data but to effectively manage 
// it and provides high performance, authorized access and failure recovery features.

contract Oracle {
    address admin;
    uint public rand;
    
    constructor() public {
        admin = msg.sender;
}

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }

}


contract GenerateRandomNumber {
    
    Oracle oracle; 
    
    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }
    
    // Build a random number generator which takes an input range and uses cryptographic hashing 
    // modulo (%) - so by computing against the remainder we will be able to produce a random number within a range 
    // cryptographic hashing 
    
    function randMod(uint range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random numbers - we need something dynamically changing
        // abi.encodePacked concatonates arguments nicely 
        return uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp, block.difficulty, msg.sender))) % range;
    }
    
}