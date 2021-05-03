pragma solidity ^0.8.4;

contract MyContract {
    //A place to store this person struct
    Person[] public people;
    uint256 public peopleCount;
    uint256 private openingTime; //type timestamp
    
    /*struct:Allow you define your own data types.
    You can basically model any kind of data 
    You want with arbitrary attributes of varying data types
    */
    struct Person{
        string _firstName;
        string _lastName;
        uint _age;
    
    }
    
    constructor ()  {
    openingTime = 2219410305;//This value is Election day
    }

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime );
        _;
    }

    function isOld(uint _age) private pure returns(bool) {
        if (_age >= 18) {
            return true;
        } else {
            return false;
        }
        
    }
    
    function addPerson(string memory _firstName, string memory _lastName, uint _age) public onlyWhileOpen returns(string memory) {
        if (isOld(_age) == true) {
            people.push(Person(_firstName,_lastName,_age));
            peopleCount ++;
            return "Correct !. Welcome to the voting. ";
        } else {
            return "It's not possible, your're a miniur. ";
        }
    }
}


// SPDX-License-Identifier:UNLICENSED