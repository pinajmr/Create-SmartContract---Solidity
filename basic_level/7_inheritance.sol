pragma solidity 0.8.4;


contract ERC20Token {
    string public name ;
    mapping(address => uint256) public balances;
    
    constructor(string memory _name) {
        name = _name;
    }
    
    function mint() internal {
        balances[tx.origin] ++;
        
    }
}



contract MyToken is ERC20Token{
    string public symbol;
    address [] public owners; // for registration who buy token
    uint256 ownerCount;// You know who buy token for increment list
    
    constructor (string memory _name,string memory _symbol) ERC20Token(_name) {
        name = _name;
        symbol = _symbol;        
    }
    
    function buy() public{
        super.mint();
        ownerCount ++;
        owners.push(msg.sender);
    }
        
}

// SPDX-License-Identifier:UNLICENSED 