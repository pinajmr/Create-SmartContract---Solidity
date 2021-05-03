// Declare version 
pragma solidity ^0.8.4;

//Declare Smart Contract
contract MyContract {

    // Declaring the variable like this:
    string pina;
    string wife;
    
    //default value, it also must have the public visibility
    constructor() {
        pina = unicode" 🍍 ";
        wife = "Sarah";
    }
    
    function get() public  view returns(string memory, string memory){
        return (pina,wife);
    }
    
    function set(string memory _pina ,string memory _wife) public {
        pina = _pina;
        wife = _wife;
    }
}

/* If a wanna the value is constant
string public constant value = "MyValue"
*/

// SPDX-License-Identifier:UNLICENSED