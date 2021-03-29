pragma solidity 0.5.1;

contract MyContract{
    uint256 public peopleCount = 0;
    // Mapping which allow us to store key_value pairs
    mapping(uint => Person) public people;
        
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public{
        incrementCount();
        people[peopleCount] = Person(peopleCount,_firstName,_lastName);
    }
    
      function updatePerson(uint _id, string memory _firstName, string memory _lastName) public{
        people[_id] = Person(peopleCount,_firstName,_lastName);
    }
    
    function incrementCount() internal{
        peopleCount += 1;
    }
}