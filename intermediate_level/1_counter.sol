pragma solidity ^0.6.0;

// Simplified version
contract Counter{
    uint public count = 0;
    
    function incrementCount() public{
        count ++;
    }
}

//First version

// contract Counter{
//     uint count;
    
//     constructor() public{
//         count = 0;
//     }
    
//     function getCount() public view returns(uint){
//         return count;
//     }
    
//     function incrementCount() public{
//         count = count + 1;
//     }
// }