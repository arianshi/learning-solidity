// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

// storage - all data will be stored on the blockchain
// memory - data will exist temporarily within a function
// calldata - data is passed as a function argument and cannot be modified

contract DataLocations {
    uint[] public arr;
    mapping (uint => address) map;

    struct MyStruct {
      uint foo;  
    }

    mapping (uint => MyStruct) myStructs;

    function f() public  {
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];

        // create a struct in memery
        MyStruct memory myMemoryStruct = myStructs[0];
    }

    function _f(
        uint[] storage _arr,
        mapping (uint => address) storage _map,
        MyStruct storage _myStruct
    )  internal {
       // to do something with storage variables
    }

    function g(uint[] memory _arr) public  returns(uint[] memory) {
      // to do something with memory variables
    }

    function h(uint[] calldata _arr) public  returns(uint[] memory) {
      // to do something with calldata variables
    }

}