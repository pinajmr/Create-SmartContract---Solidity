pragma solidity 0.8.4;

library Math {
    
    function divide (int256 a, int256 b) internal pure returns(int256) {
        require(b != 0);
        return  a / b;
    }
    
    function sum (int256 a, int256 b) internal pure returns(int256) {
        return a + b;
    }
    
    function multiplication (int256 a, int256 b) internal pure returns(int256){
        return a * b;
    }
    
    function substraction (int256 a , int256 b) internal pure returns(int256) {
        return a - b;
        
    }
}


contract Mycontract {
    int256 public division;
    int256 public sum;
    int256 public multiplication;
    int256 public substraction;
    
    function calculate(int _value1, int _value2) public {
        division = Math.divide(_value1, _value2);
        sum = Math.sum(_value1,_value2);
        multiplication = Math.multiplication(_value1,_value2);
        substraction = Math.substraction(_value1,_value2);
        
    }
}
// SPDX-License-Identifier: UNLICENSED