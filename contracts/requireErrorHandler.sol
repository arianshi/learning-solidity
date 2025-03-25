// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract RequireErrorHandler {
    
    function check(uint256 _input) public pure returns(string memory) {
        require(_input >= 0, "invalid uint8");
        // revert The transaction has been reverted to the initial state. Reason provided by the contract: "invalid uint8".
        require(_input <= 255, "invalid uint8");

        return "Input is Uint8";
    }

    /*
    call to RequireErrorHandler.odd errored: Error occurred: revert.
    revert
    The transaction has been reverted to the initial state.
    Note: The called function should be payable if you send value and the value you send should be less than your current balance.
    If the transaction failed for not having enough gas, try increasing the gas limit gently.
    */
    function odd(uint256 _input) public pure returns (bool) {
        require(_input % 2 != 0);
        return true;
    } 
}