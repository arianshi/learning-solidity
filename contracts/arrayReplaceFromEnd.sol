// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;


contract ArrayReplaceFromEnd {
   uint[] public arr;

   function remove(uint index) public {
     // Replace the place
     arr[index] = arr[arr.length - 1];
     arr.pop();
   }

   function test() public {
    // 0, 1, 2, 3
    // 1  23 4 45 
    // Frist change position and then delete last element 
    // 1  45 4 (23)  
  
     arr = [1, 23, 4, 45];
     // [1, 45, 4]
     remove(1);
     
     assert(arr[0] == 1);
     assert(arr[1] == 45);
     assert(arr[2] == 4);

     remove(2);
      // [1, 45]

     assert(arr[0] == 1);
     assert(arr[1] == 45);

   }
}