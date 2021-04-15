pragma solidity ^0.6.0;

contract MyContract{
    //Array
    
    uint[] public uintArray = [7,14,23];
    string[] public stringArray = ["Sheze", "Fortune"];
    string[] public values;
    uint[][] public array2D = [[5,3,2],[1,9,8]];
    
    function addValue(string memory _value) public{
        values.push(_value);
    }
    
    function valueCount() public view returns(uint){
        return values.length;
    }
}