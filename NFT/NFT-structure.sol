pragma solidity 0.5.1;


contract MyNFT{
    //Total Supply: total number of coins available on the blockchain
    uint256 private totalSupply = 10000;
    
    function name() cosntant return (string memory name){
        return "My Non-Fungible Token";
    }
    
    function symbol() constant returns (string memory symbol){
        return "4GROTH";
    }
    
    function totalSupply() constant returns (uint256 supply){
        return totalSupply;
        
    }
    
    //BalanceOF: is used to find the number of tokens
    //.. that a given address owns.
    mapping(address => uint) private balances;
    
    function balanceOF(address _owner) constant returns(uint balance){
        return balance[_owner];
    } 

    interface ERC721 {
      function ownerOf(uint256 _tokenId) external view returns (address);
      function transferFrom(address _from, address _to, uint256 _tokenId) external payable;
    }
}

