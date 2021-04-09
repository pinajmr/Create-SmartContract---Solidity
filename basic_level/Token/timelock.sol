pragma solidity ^0.5.1;


//Saving account in Ethereum
// and withdraw your money in specific time 
contract Timelock {
    
    address payable public beneficiary;//Who can withdraw
    uint256 public releaseTime; //When?

    constructor(
        address payable _beneficiary,
        uint256 _releaseTime
  )
    public
    payable
  {
    require(_releaseTime > block.timestamp);
    beneficiary = _beneficiary;
    releaseTime = _releaseTime;
  }

  function release() public {
    require(block.timestamp >= releaseTime);
    address(beneficiary).transfer(address(this).balance);
  }
}

