// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract HashFunction {
    // Hash function
    function hash(
        string memory _text,
        uint _num,
        address _addr
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }

    // Hash collision can occur when you pass more than one dynamic data type
    // to abi.encodePacked. In such case, you should abi.encode instead.
    function collision(string memory _text, string memory _anotherText) public pure returns (bytes32) {
       return keccak256(abi.encodePacked(_text, _anotherText));
    }
}

contract GuessTextWord {
    bytes32 public answer = 0x62942552c11e3bddc20c3913ad243fabc54d70bcf13921ff9c46dd94d21817a9;
    
    // Magic word is Solidity
    function guess(string memory _word) public view  returns (bool) {
        return keccak256(abi.encodePacked(_word)) == answer;
    }
}