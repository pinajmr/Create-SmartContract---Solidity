pragma solidity 0.5.1;

contract MyContract {
    string private stringValue = "Pina";
    bool private mybol = false;
    int private myInt = -20;
    uint private myUint = 1;
    uint8 private myUint8 = 9; // 2^(8-1)
    uint256 private myUnit256 = 9999; // 2^(256-1)

    //Enum Data structure, which are a way of keeping
    // track of enumerated list in Solidity
    enum State {Waiting, Ready, Active}
    State public state;
    
    constructor() public {
        state = State.Waiting  ;
    }
    
    function initial() public {
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
        
    }
    
       function ready() public {
        state = State.Ready;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
    
 
}