pragma solidity 0.5.1;

contract MyContract{
    
    //mapping to track the token balances
    mapping(address => uint256) public balances;
    address payable wallet;
    
    //This event will log the buyer and the token amount.
    //We'll be able to trigger this event inside the buyToken()
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    //It will purchase tokens any time an acount sends ether to the smart contract
    function() external payable{
        buyToken();
    }
    

    //function that will increment the balance
    function buyToken() public  payable{
        //buy a token
        balances[msg.sender] += 1;
        //send ether to the wallet
        wallet.transfer(msg.value);//we can get the value of the ehter sent in by function caller with msg.value
        emit Purchase(msg.sender, 1);
    }
}

//payable: is a modifier so that accounts can send ehter when
//caling the function