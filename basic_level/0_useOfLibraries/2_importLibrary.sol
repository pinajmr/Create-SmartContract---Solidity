pragma solidity 0.8.4;

import "./Math.sol";


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