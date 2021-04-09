pragma solidity 0.5.1;

//1. Deploy first ERC20Token and copy contract address
//2. In the first field introduce the wallat for deposits and the second field the contract address copy before.
//3. Deploy MyContract
//4. You can buy Tokens  and check your balances in ERC20token 


contract ERC20Token {
    string public name ="PINA";
    mapping(address => uint256) public balances;
    
    function mint() public {
        //balances[msg.sender] ++; msg.sender is actually referencing
        //the address of MyContract, for this reason we must
        //use tx.origin
        balances[tx.origin] += 1;
        
    }
}

contract MyContract{
    
    address payable wallet;
    address public token;
    
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    
    function() external payable{
        buyToken();
    }
    
    function buyToken() public  payable{
        ERC20Token _token = ERC20Token(address(token));
        _token.mint();
        //Is equal to:
        
        //ERC20Token(address(token)).mint();
        
        wallet.transfer(msg.value);
    }
}