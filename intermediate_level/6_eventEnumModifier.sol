pragma solidity ^0.6.0;


contract HotelRoom {
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    event Occupy( address _occupant, uint _value);
    
    //payable is so that the owner can receive the ether
    address payable public owner;
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyWhileVacant {
        //Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }
    
    modifier costs (uint _amount) {
        //Check price
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }
    
    receive() external payable onlyWhileVacant costs( 2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}