// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract LocalVarible {
    uint256 public myNumber;

    function local() public returns (address, uint256, uint256) {
        uint256 i = 345;
        myNumber = i;

        i += 45;
        
        address myAddres = address(1);

        return (myAddres, myNumber, i);

    }
} 