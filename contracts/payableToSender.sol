// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract PayableToSender {
    address payable public owner;

    event Deposited(address indexed sender, uint amount);
    event Withdrawn(address indexed recipient, uint amount);
    event Transferred(address indexed from, address indexed to, uint amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {
        emit Deposited(msg.sender, msg.value);
    }

    function notPayable() public {}

    function withdraw() public onlyOwner {
        uint amount = address(this).balance;
        (bool success, ) = owner.call{ value: amount }("");
        require(success, "Failed to send Ether");

        emit Withdrawn(owner, amount);
    }

    function transfer(address payable _to, uint _amount) public onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance");
        (bool success, ) = _to.call{ value: _amount }("");
        require(success, "Failed to send Ether");

        emit Transferred(owner, _to, _amount);
    }
}
