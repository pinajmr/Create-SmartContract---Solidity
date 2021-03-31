pragma solidity 0.5.1;

import "./Math.sol";


contract Mycontract {
    uint256 public division;
    uint256 public suma;
    
    function calculate(uint _value1, uint _value2) public{
        division = Math.divide(_value1, _value2);
        suma = Math.sum(_value1,_value2);
    }
}