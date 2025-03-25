// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract AssertStatement{
    bool public result;

    function checkOverFlow(uint256 _num1, uint256 _unm2) public {
        uint256 sum = _num1 + _unm2;
         // just conditional, no error messages
        assert(sum <= 255);
        result = true;   
    }

    function getResult() public view returns (string memory) {
        if (result == true) {
            return "No Overflow";
        } else {
            return "Overflow Exist";
        }
    }
}