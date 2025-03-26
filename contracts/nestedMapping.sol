// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping (address => mapping (uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
       return nested[_addr1][_i];  
    }

    function set(
        address _addr1,
        uint _i,
        bool boo
    ) public {
         nested[_addr1][_i] = boo;
    }

    function remove(address _addr1, uint _i) public {
       delete  nested[_addr1][_i];  
    }

}