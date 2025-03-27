// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Function {
   // return many parameters
   function returnMany() public pure returns (uint, bool, uint) {
     return  (1, true, 1);
   } 
   // Return values can be named
   function  named() public pure  returns (uint x, bool b, uint y) {
    return (1, true, 2);
   }
   // Return values can be assigned to their name
   // In this case the return statement can be omitted
   function assigned() public  pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
   }
   // use destructuring assignment when calling another
   function destructuringAssignment() 
   public 
   pure 
   returns (uint, bool, uint, uint, uint) {
       (uint i, bool b, uint j) = returnMany();
       // values can be left out.
       (uint x, , uint y) = (4, 5, 6);

       return (i, b, j, x, y);
   }

   // Cann't use map for either input or output
   // Can use array for input
   function arrayInput(uint[] memory _arr) public  {}

   // Can use array for output 
   uint [] public arr;
   function arrayUOutput() public view returns (uint[] memory) {
     return arr;
   }

   
}

// Call function with key-value inputs
contract XYZ {
    function someFucntionWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {

    }

    function callFunc() external pure returns (uint) {
        return someFucntionWithManyInputs(1, 2, 3, address(0), true, 'C');
    }
    function callFuncWithKeyVavlue() external pure returns (uint) {
        return someFucntionWithManyInputs({
            a: address(0),
            x: 1,
            y: 3,
            z: 3,
            b: true,
            c: "test"
        });
    }
}