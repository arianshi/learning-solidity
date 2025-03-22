// SPDX-License-Identifer: MIT

pragma solidity ^0.8.23;

contract NFTCount {
    uint256 public numberOfNFT;
    
    function addNFT() public  {
       numberOfNFT += 1;
    }

    function deleteNFT() public  {
       numberOfNFT -= 1;
    }

    function checkTotalNFT() public view returns (uint256) {
        return numberOfNFT;
    }
}
