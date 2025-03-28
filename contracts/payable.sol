// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract PayableToSender {
    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable  {
       // msg.sender is current account address
       // msg.sender refers to the address where the contract is being called from.
       owner = payable (msg.sender);
    }

    // Function to deposit Ether into this contract
    // Call this function along with some Ether
    // The balance of this contract will be automatically updated
    function depost() public payable {}

    // Call this function along with Ether
    // The function will throw an error since this function is not payable

    function notPayable() public {}

    function withdraw() public  {
        // get the amount of Ether stored in this contract
        // address(this) is this contract address
        // address(this) refers to the address of the instance of the contract where the call is being made.
        uint amount = address(this).balance;

        // send all Ether to owner
        // Owner can receive Ether since this address of owner is payable

        (bool success, ) = owner.call{ value: amount}("");

        require(success, "Failed to send Ether");
    }

    // _to Contract account to be credited
    function transfer(address payable _to, uint _amount) public {
          // Note that _to is declared as payable

          (bool success, ) = _to.call{ value: _amount }("");
   
          require(success, "Failed to send Ether");
    }
}