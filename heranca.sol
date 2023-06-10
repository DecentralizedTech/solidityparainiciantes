// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    uint public x;
    
    function setX(uint _x) public {
        x = _x;
    }
}

contract Derived is Base {
    function incrementX() public {
        x += 1;
    }
}
