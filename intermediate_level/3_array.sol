pragma solidity ^0.8.4;

contract MyContract {
    //Array
    
    string[] public values;
    uint[] public uintArray = [7,14,23];
    string[] public stringArray = ["Sheze", "Fortune"];
    uint[][] public array2D = [[5,3,2],[1,9,8]];
    
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns(uint) {
        return values.length;
    }
}

// SPDX-License-Identifier:UNLICENSED 