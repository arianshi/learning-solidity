// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract RevertStatement {
    function checkOverFlow(uint256 _num1, uint256 _num2) public pure returns (string memory, uint256) {
      uint256 sum = _num1 + _num2;
      if (sum < 0 || sum > 255) {
        // call to RevertStatement.checkOverFlow errored: Error occurred: revert.
        revert("Overflow Exist");
      } else {
        return ("No Overflow", sum);
      }
    }
}