pragma solidity ^0.8.4;

// Simplified version
contract Counter{
    uint public count = 0;
    
    function incrementCount() public {
        count ++;
    }
}

//First version

contract Counter2 {
    uint count;
    
    constructor() {
        count = 0;
    }
    
    function getCount() public view returns(uint){
        return count;
    }
    
    function incrementCount() public{
        count = count + 1;
    }
}
// SPDX-License-Identifier:UNLICENSED 