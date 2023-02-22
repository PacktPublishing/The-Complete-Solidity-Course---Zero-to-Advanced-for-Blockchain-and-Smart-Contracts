pragma solidity >= 0.7.0 < 0.9.0;

/*

Cybersecurity In Solidity - against bad actors, accidental occurances 

Withdrawal pattern ensures that direct transfer call is not made which poses a security threat. 
Transfers are atomic (meaning all or nothing!)

Write an iterating function called returnFunds that will refund through the transfer method investors to a var 
called funders back to their wallets called contributedAmount. Add a modifier to the signature
that only the owner can execute this function. The function should return a bool success. 


contract test {

modifier onlyOwner {
    require(true);
    _;
}

// the investors were contributing to a fundraiser - now everyone gets refunds
function returnFunds() public onlyOwner returns(bool success) {
    for(uint i =0; funders.length; i++ ) {
        funders[i].transfer(contributedAmount);
    }
    return true;
}

*/

/* what do you think is the problem with the returnFunds function? 

1.What if the owner chickens out and does not return funds?
The owner is a single point of failure and this pattern 
suggests adherence to server-centric thinking — 
only a privileged user should be able to initiate a mass distribution of funds.

2. the loop is unbound! it could very well run out of gas before allocating all the funds back
an attacker could do is just make a bunch of small contributions .0000284289

Another example: We only have two investors to refund - 

Write a function that will return funds to two investors, john and tatianna without using a for loop!

function returnFunds() public onlyOwner returns(bool success) {
tatiana.transfer(contributedAmount); 
john.transfer(contributedAmount);
return true;
}

*/


/* What could go wrong?
What happens if Tatianna rejects the transfer? If Tatianna rejects the transfer
the function is going to fail and then John will not get paid!!!

Thinking that all contracts and accounts want to accept funds automatically may be 
intuitive at first but it is in fact very naive and very dangerous to build your code like this

If it is more in their interest to reject funds then chances are they will reject the funds 

write a fallback function 

fallback () public {}

// a default fallback function is not payable - it will reject funds 

// if one contract has a default fallback function it would be deadly for the naive contract  
// to refund this contract address - it will not work unless everyone accepts. It will fail. 

// Should we disallow contracts to recieve funds? 
// Because not all contracts will fail or are mailcious - it would deter DAOs 

// How does a contract find out if another address is a contract? 

}

*/

contract Victim {
    function isItAContract() public view returns(bool) {
        // if there bytes of code greater than zero then it is a contract! 
        uint32 size;
        address a = msg.sender;
        // inline assembly accesses EVM Ethereum Virtual Machine at a low level 
        assembly {
        // extcodesize retrieves the size of the code 
            size := extcodesize(a)
        }
        return(size > 0);
    }    
}

contract Attacker {
    bool public trickedYou;
    Victim victim;
    
    constructor(address _v) public {
        victim = Victim(_v);
        trickedYou = !victim.isItAContract();
    }
}

// well if you call the address from the constructor ther are no byte codes  

// What do we do?? THE WITHDRAWAL PATTERN 