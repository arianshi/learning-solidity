// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract FallBack {
    event Log(string func, uint gas);

    // Fallback function must be delcalred as external
    fallback() external payable {
        // send / transfer (forwards 2300 gas to fallback function)
        // call (forwards all of the gas)
        emit Log("fallback", gasleft());
     }

    // Receive is a variable of fallback that is triggered when msg.data is empty
    receive() external payable {
        emit Log("fallback", gasleft());
    } 

    // Helper fucntion to check this contract balance
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
}

contract sendToFallback {

    function transferToFallback(address payable _to) public payable {
         _to.transfer(msg.value);
    }

    function callToFallback(address payable  _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send");
    } 
}