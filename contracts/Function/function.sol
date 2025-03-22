
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract LearnFunction {
    // uint256 public hey;
    uint256 public hey;

    // function  geInfo() public view returns (uint256) {
    //    return hey; 
    // }

    // function updateData (uint256 _hey) public  {
    //     hey = _hey;
    // } 

    // Warning: Function state mutability can be restricted to pure
    // function get(uint256 _a, uint256 _b) public view  returns (uint256) {
    //     uint256 newNumber = _a + _b;
    //     return  newNumber;
    // }

    function getPure(uint256 _a, uint256 _b) public returns(uint256) {
        uint256 newNumber = _a + _b;
        hey =  newNumber;
        return hey;
    }
}