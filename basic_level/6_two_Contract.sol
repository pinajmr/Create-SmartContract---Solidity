pragma solidity 0.8.4;

//1. Deploy first ERC20Token and copy contract address
//2. In the first field introduce the wallat for deposits and the second field the contract address copy before.
//3. Deploy MyContract
//4. You can buy Tokens  and check your balances in ERC20token 


contract ERC20Token {
    string public name ="PINA";
    mapping(address => uint256) public balances;
    
   
    function mint() external {
        //the address of MyContract, for this reason we must
        //use tx.origin
        balances[tx.origin] ++;
        
    }
}

contract MyContract {
    
    address payable wallet;
    address public token;
    event Receive(address,uint);
    
    constructor (address payable _wallet, address _token) {
        wallet = _wallet;
        token = _token;
    }
    
    fallback () external payable {
        buyToken();
    }
    
    receive() external payable {
       emit Receive(msg.sender,msg.value); 
    }
    
    function buyToken() public  payable {
        ERC20Token _token = ERC20Token(address(token));
        _token.mint();
        //Is equal to:
        
        //ERC20Token(address(token)).mint();
        
        wallet.transfer(msg.value);
    }
}

// SPDX-License-Identifier:UNLICENSED 