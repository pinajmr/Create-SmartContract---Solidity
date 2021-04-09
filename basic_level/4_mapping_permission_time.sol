pragma solidity 0.5.1;

contract MyContract{
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;// Mapping which allow us to store key_value pairs
    uint256 openingTime; //type timestamp
    address owner;//te owner of this smart contract
    
    //this modifier is for onlyAdmin
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime );
        _;
    }

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    constructor() public{
        owner = msg.sender;
        openingTime = 1617045074;//You have update this value
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner onlyWhileOpen{
        incrementCount();
        people[peopleCount] = Person(peopleCount,_firstName,_lastName);
    }
    
      function updatePerson(uint _id, string memory _firstName, string memory _lastName) public onlyOwner{
        people[_id] = Person(peopleCount,_firstName,_lastName);
    }

    //private function
    function incrementCount() internal{
        peopleCount += 1;
    }
}