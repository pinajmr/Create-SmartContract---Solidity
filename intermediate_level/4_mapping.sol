pragma solidity ^0.8.4;

contract MyContract {
    /*mapping
    mapping(Key => Value) */ 
    
    mapping(uint => string) public authors;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }
    
    //Mapping database
    constructor(){
        authors[1] = "Pina";
        authors[2] = "Sarah";
        authors[3] = "Factovid";
        authors[4] = "Whynot?";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
}

// SPDX-License-Identifier:UNLICENSED 