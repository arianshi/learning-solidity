// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.23;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArray;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }
   
    // Solidity can return the entire array
    function getArr() public view returns (uint[] memory) {
     return arr;
    }

    function push(uint i) public {
        // Append to array to end
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public  view returns (uint) {
       return arr.length;
    }

    // Wraning: Delete does't change the length of array, just set valur is 0
    function remove(uint index) public {
        // Delete does't change the length of array
        // It returns the value at index to it's default value, in the case 0
        delete arr[index];
    }

    function test() pure external {
      // Create array in memory, only fixed size can be create
      uint[] memory a = new uint[](5); 
    }
}