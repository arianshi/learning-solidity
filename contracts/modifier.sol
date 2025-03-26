// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
import "hardhat/console.sol";

// function modifier
// Modifier are code can be run before or after function call
// Restrict access Validate inputs Guard against reentrancy hack

contract FunctionModifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
       // current acount 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
       owner = msg.sender;
    }

    // only owner can call this function
    modifier onlyOwner(){
      require(msg.sender == owner, "Not Owner");
       _; // countinue function
    } 

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not validate address");
        _; // countinue function
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        owner = _newOwner;
    }
}