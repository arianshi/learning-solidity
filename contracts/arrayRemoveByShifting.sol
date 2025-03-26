// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract ArrayRemoveByShifting {
    uint[] public arr;

    function remove(uint _index) public {
       for (uint i = _index; i < arr.length - 1; i++ ) {
          arr[i] = arr[i + 1];
       }
       arr.pop();
    }

    function test() public {
        arr = [1, 3, 5, 8, 10];
        remove(1);
        // [1, 5, 8, 10]

        assert(arr[0] == 1);
        assert(arr[1] == 5);
        assert(arr[2] == 8);
        assert(arr[3] == 10);

    }
}