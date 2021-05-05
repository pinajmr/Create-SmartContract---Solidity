pragma solidity ^0.8.4;


contract HotelRoom {
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    event Occupy( address _occupant, uint _value);

    //payable is so that the owner can receive the ether
    address payable public owner;
    
    constructor(address payable _owner) {
        owner = _owner;
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyOwn {
        require(owner == msg.sender);
        _;
    }
    
    modifier onlyWhileVacant {
        //Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }
    
    modifier costs (uint _amount) {
        //Check price
        require(msg.value == _amount, "Only 2 Ether !. ");
        _;
    }
    
    function changeStatus() public onlyOwn {
        currentStatus = Statuses.Vacant;
        
    }
    
    function status() public view returns (string memory) {
        if (currentStatus == Statuses.Vacant){
            return "It's free";
        } else {
            return "It's occupied";
        }
    }
    
    receive() external payable onlyWhileVacant costs( 2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
// SPDX-License-Identifier:UNLICENSED 