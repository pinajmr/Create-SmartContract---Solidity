// Declare version 
pragma solidity ^0.5.1;

//Declare smart contract
contract MyContract{

    // Declaring the variable like this:
    string value;
    
    //default value, it also must have the public visibility
    constructor() public {
        value = "MyValue";
    }
    
    function get() public view returns(string memory){
        return value;
    }
    
    function set(string memory _value) public{
        value = _value;
    }
}

// If a wanna the value is constant
//  string public constant value = "MyValue"