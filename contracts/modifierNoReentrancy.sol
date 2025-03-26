// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract modifierNoReentrancy {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
       // current acount 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
       owner = msg.sender;
    }

    modifier noReentrancy() {
        require(!locked, "No Reentrancy");
        locked = true;
        _;
        locked = false;
    }

   function decrement(uint256 i) public noReentrancy {
        require(i <= x, "Not enough x to decrement"); 
        for (uint256 j = 0; j < i; j++) {
            x = x - 1;
        }
    }
}