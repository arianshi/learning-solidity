 // SPDX-License-Identifier: MIT

 pragma solidity ^0.8.23;

 // First compile and then deploy
 contract MyContract {
    string  public hey;
    uint256 public no;

    constructor (string memory _hey, uint _no) {
        hey = _hey;
        no = _no;
    }
 }
 
 