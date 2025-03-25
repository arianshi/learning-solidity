// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.23;

contract Constants {
    // 70063 gas
    address public  myAdd = 0x172108A678dA88fb5f0645ED6Fc3f5045e232829;
    // 45697 gas
    address public constant MY_ADDR = 0x172108A678dA88fb5f0645ED6Fc3f5045e232829;
    
    function getConstant() public view returns(address) {
        return myAdd;
    }

}