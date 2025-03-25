// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract DoWhileLoop {
    uint256[] data;
    uint8 j = 0;

    function doWhileLoop() public returns(uint256[] memory) {
       do {
         j++;
         data.push(j);  
       } while (j < 50); 

       return data;
    }
}