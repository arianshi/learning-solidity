// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract WhileLoop {
   uint256[] data;
   uint8 k = 0;

   function loop() public returns (uint256[] memory) {
     while ( k < 150) {
        k++;
        data.push(k);
     }
     return data;
   }

}
