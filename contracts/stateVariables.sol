// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract StateVariables {
    // State Variables
    string public myState;
    uint256 public myNum;

    string public defaultText = "Hey arian";
    uint256 public defaultNum = 56;

    bytes public defaultTextByte = "Gett";
    bytes public defaultNo;

    uint256[] public myNumber;


    constructor(string memory _myState, uint _no) {
       myState = _myState;
       myNum = _no;
    }

    function update(string memory _myState, uint _no)  public {
       myState = _myState;
       myNum = _no;
    }

}