pragma solidity ^0.6.0;

contract MyContract{
    //State Variables:
    // Visible on the blockchain
    bytes32 public myBytes32 = "Hello, world!";
    uint public myUint = 1;
    address public myAddres = 0x4317c44fD3143D8AC5723865CF046238A2cd8FD3;
    

    
    function getValue() public pure returns(uint){
        //Local variable:
        //Stored in function memory
        uint value = 1;
        return value;
    }
    
    // You own structure
    struct Person {
        uint ID;
        string name;
        uint age;
    }
    
    Person public person = Person(13123,"Pina",26);
}