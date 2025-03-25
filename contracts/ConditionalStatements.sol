// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Conditions {
      uint256 public myNum = 5;
      string public myString;

    //   function get(uint256 _num) public returns(string memory) {
    //      if (_num == 5) {
    //          myString = "Hey you enter is 5";
    //      } else if (_num == 4) {
    //          myString = "Hey you enter is not 5";
    //      } else {
    //          myString = "Hey other number";
    //      }
    //   }

      function ternaryOperator(uint256 _num) public returns (string memory) {
        return _num == 5 ?  myString = "Hey you enter is 5" :  myString = "Hey you enter other number";
      }
}