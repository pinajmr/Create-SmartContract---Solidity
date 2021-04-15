pragma solidity ^0.6.0;

contract MyContract{
    //mapping
    // mapping(Key => Value)
    
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book{
        string title;
        string author;
    }
    //Mapping database
    constructor() public{
        names[1] = "Pina";
        names[2] = "Sarah";
        names[3] = "Factovid";
        names[4] = "Whynot?";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public{
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
}