pragma solidity >= 0.7.0 < 0.9.0;

//Special variables (global variables) are globally available variables and provides information about the blockchain. 
// Ex: 
// msg.sender: Sender of the message (current call), msg.value (uint): Number of wei sent with the message., 
// block.timestamp: Current block timestamp as seconds since unix epoch, block.number (uint): current block number

contract LedgerBalance {
// create a map of wallets with amounts
// set up a function that can update the amount of the person call the contract - current address - msg.Sender

mapping(address => uint) balance;

function updatesBalance(uint newBalance) public {
    balance[msg.sender] = newBalance;
}
}

// 1. create a new contract called Updated
// 2. (if you haven't done this) copy the contract LedgerBalance above your new contract
// 3. create a public function called updatesBalance
// 4. instantiate the data type contract LedgerBalance to a new variable called ledgerbalance (similar to struct or enum).
// 5. set the new variable ledgerbalance = new LedgerBalance() 
// 6. update the ledgebalance to 30 
// 7. deploy both contracts and up then update the ledgerbalance by 30 using the Updated contract 

contract Updated {
    
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);
    }
    
}

// Other Global Variable Examples 

contract SimpleStorage {
    
    uint storedData;
    
    function set(uint x) public {
        //storedData = x;
        // storedData = block.difficulty;
        // storedData = block.timestamp;
        storedData = block.number;
    }
    
    function get() public view returns (uint) {
        return storedData;
    }
    
}
