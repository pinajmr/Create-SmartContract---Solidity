pragma solidity 0.8.4;

contract MyContract{
    
    //mapping to track the token balances
    mapping(address => uint256) public balances;
    address payable wallet;
    
    //This event will log the buyer and the token amount.
    //We'll be able to trigger this event inside the buyToken()
    event Purchase (
        address indexed _buyer,
        uint256 _amount
    );
    
    event Received(address, uint);

    constructor (address payable _wallet) {
        wallet = _wallet;
    }
    
    //It will purchase tokens any time an acount sends ether to the smart contract
   fallback() external payable {
        buyToken();
    }
    
    receive() external payable {
        emit Received(msg.sender,msg.value);
    }
    
    modifier money(){
        require(msg.value == 2 ether);
        _;
    }
    
    //function that will increment the balance
    function buyToken() public  payable money {
        //buy a token
        balances[msg.sender] += 100;
        //send ether to the wallet
        wallet.transfer(msg.value);//we can get the value of the ehter sent in by function caller with msg.value
        emit Purchase(msg.sender, 1);
         
    }
}

/*payable: is a modifier so that accounts can send ehter when
caling the function

SPDX-License-Identifier:UNLICENSED */