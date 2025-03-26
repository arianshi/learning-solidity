// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Mapping {
   // Mapping from address to uint
   mapping(address => uint) public myMap;

   function get(address _addr) public  view returns(uint) {
     // Mappings always returns a value
     // If the value was never set, it will return default value
     return myMap[_addr]; 
   } 

   function set(address _addr, uint _i) public {
     myMap[_addr] = _i;
   }

   function remove(address _addr) public {
     delete myMap[_addr];
   }

}