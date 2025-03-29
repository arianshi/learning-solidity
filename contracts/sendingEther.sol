// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract ReceiveEther {

    // Function to receive Ether. msg.data must be empty.
    receive() external payable {}
    // Fallback function will be called when msg.data is not empty.
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    // Via transfer function
    function sendViaTransfer(address payable  _to) public payable {
       // This function is no longer recommand for sending Ether
       _to.transfer(msg.value);
    }
    // Via send function
    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure
        // This function is not recommand for sending Ether
        bool sent = _to.send(msg.value);
        require(sent, "Fialed to send Ether");
    }
    // Via call 
    function sendViaCall(address payable _to) public payable  {
        // Call returns a boolean value indicating success or failure
        // This function is the current recommand methond to use.
        (bool sent, ) = _to.call{ value: msg.value}("");
        require(sent, "Failed to send Ether");
    } 
}