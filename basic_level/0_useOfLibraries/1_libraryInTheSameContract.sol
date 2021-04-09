pragma solidity 0.5.1;

library Math {
    
    //first function: division integers
    function divide(uint256 a, uint256 b) internal pure returns(uint256){
        require(b>0);
        uint256 c = a / b;
        return c;
    }
    
    //second function
    function sum(uint256 a, uint256 b) internal pure returns(uint256){
        uint256 c = a + b;
        return c;
    }
}


contract Mycontract {
    uint256 public division;
    uint256 public suma;
    
    function calculate(uint _value1, uint _value2) public{
        division = Math.divide(_value1, _value2);
        suma = Math.sum(_value1,_value2);
    }
}