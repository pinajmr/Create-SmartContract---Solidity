pragma solidity ^0.8.4;

contract MyContract {
    
    string private constant stringValue = unicode"Piña";
    bool private mybol = false;
    int private myInt = -20;
    uint private myUint = 1;
    uint8 private myUint8 = 9; // 2^(8-1)
    uint256 private myUnit256 = 9999; // 2^(256-1)

    /* Enum Data structure, which are a way of keeping
     track of enumerated list in Solidity */
     
    enum State {Stopped, Ready, isRunning}
    State private state;
    
    constructor() {
        state = State.Stopped;
    }
    
    function initial() public {
        state = State.Stopped;
    }
    
    function ready() public {
        state = State.Ready;
    }
    
     function activate() public {
        state = State.isRunning;
    }
    
    function whatIsYourStatus() public view returns(string memory){
        if (state == State.Stopped){
            return "No, it's stopped. ";
        } else if (state == State.Ready) {
            return "No, but it's ready. ";
        } else {
            return "YES !, it's running. ";
        }
    }
 
}

// SPDX-License-Identifier:UNLICENSED