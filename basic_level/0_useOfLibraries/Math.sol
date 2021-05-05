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
// SPDX-License-Identifier: UNLICENSED