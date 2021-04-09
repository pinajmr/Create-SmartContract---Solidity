pragma solidity 0.5.1;

contract MyContract {
    //A place to store this person struct
    Person[] public people;
    uint256 public peopleCount;
    
    //struct:Allow you define your own data types.
    // You can basically model any kind of data 
    // you want with arbitrary attributes of varying data types
    struct Person{
        string _firstName;
        string _lastName;
        string _age;
    
    }
    
    function addPerson(string memory _firstName, string memory _lastName, string memory _age) public{
        people.push(Person(_firstName,_lastName,_age));
        peopleCount ++;
    }
    
}