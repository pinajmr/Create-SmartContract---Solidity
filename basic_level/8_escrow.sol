pragma solidity ^0.8.4;

contract Escrow{
    
    address agent;
    
    //You can see that the other person deposited correctly
    mapping(address => uint256) public deposits;
    
    //Only agent can send ether
    //Is the deploy contract
    modifier onlyAgent() {
        require(msg.sender == agent);
        _;
        
    }
    
    constructor() {
        agent = msg.sender;
    }
    
    //Person who is pays the house
    function deposit(address payee) public payable {
        uint256 amount = msg.value;
        deposits[payee] = deposits[payee] + amount;
    }
    
    //Person who is sale the house
    function withdram(address payable payee) public onlyAgent{
        uint256 payment = deposits[payee];
        deposits[payee] = 0;
        payee.transfer(payment);
    }
}

// SPDX-License-Identifier:UNLICENSED 