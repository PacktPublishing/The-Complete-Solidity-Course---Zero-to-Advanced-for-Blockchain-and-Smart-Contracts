pragma solidity >= 0.7.0 < 0.9.0;

/*
Restricted Access to a Contract is a common practice. 

By Default, a contract state is read-only unless it is specified as public.

We can restrict who can modify the contract's state or call a contract's functions using modifiers. 

Let us build a contract with modified restricted access with the following common writeouts:

    onlyBy − only the mentioned caller can call this function.

    onlyAfter − called after certain time period.

    costs − call this function only if certain value is provided.


*/



contract RestrictedAcces {
    
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
    
    // write a modifier called onlyBy that will require the current caller to be equal to 
    // an account address which we set as an input in the modifier and if 
    // the requirement fails send a message that says - Sender not authorized!
    
    modifier onlyBy(address _account) {
        require(msg.sender == _account,
        'Sender not authorized!'
        );
        _;
    } 
    
    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time,
        'function is called too early!');
        _;
    }
    
    // write a function that will change the owner address
    function changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    }
    
    // write a function that can disown the current owner 
    // only run the function 3 weeks or 5 seconds after the creation of the contract 
    function disown() onlyBy(owner) onlyAfter(creationTime + 5 weeks) public {
        delete owner;
    } 
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount,
        'Not enough Ether provided');
        _;
    }
    
    function forceOwnerChange(address _newOwner) payable public costs(200 ether) {
        owner = _newOwner;
    }
    
    /*
    Exercise: 
    
    1. Create a modifier called costs which takes an _amount parameter
    2. Require that msg.value is greater than or equal to the amount 
    3. If the msg.value is not greather than or equal to the amount 
       return a string that says Not enough Ether provided. 
    4. Write a funciton called forceOwnerChange which takes an address called _newOwner and is payable 
    5. add a modification to the signature so that the function needs 200 ether to execute 
    6. set the owner of the contract to the new owner of the address.
    
    7. BONUS****** Figure out how to make the function actually run! 
    */
    
}