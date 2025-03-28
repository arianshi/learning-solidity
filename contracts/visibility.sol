// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

// Visibility
// public - any contract and account can call
// private - only inside the contract that defines the function
// internal - only inside the contract that ingerits an internal function
// external - only other contracts and accounts can call

contract Base {
   // Private function can only be called
   // inside this contract
   // Contracts that inhert this contract can't call this function
   function priviteFunc() private  pure returns (string memory) {
     return "private function called";
   }

   function testPrivateFunc() public pure returns  (string memory) {
     return priviteFunc();
   }

   // Internal function can be called 
   // - inside this contract
   // - inside contracts that inhert this contract
   function internalFunc() internal pure returns (string memory) {
    return "internal function called";
   }

   function testInternalFunc() public pure virtual returns (string memory) {
     return internalFunc();
   }

   // Public functions can be called
   // - inside this contract 
   // - inside contracts that inhert this contract
   // - By other contract and accounts
   function publicFunc() public pure returns (string memory) {
    return "public function called";
   }

   // External functions can only can called
   // - By other contract and accounts
   function externalFunc() external pure returns (string memory) {
    return "external function called";
   }

   // This function will not compile since we're trying to call
   // and external function here
   /*
      function testExternalFunc() public pure returns (string memory) {
        return externalFunc()
      }
   */

   // State vatiables
   string private privateVar = "my private variable";
   string internal internalVar = "my internal variable";
   string public publicVar = "my public variable";

   // State variables can't be external so this code won't compile.
   // string extrnal extrnalvar = "my extrnal variable"
}

contract Child is Base {
    // Inherited contracts do not have access to private functions 
    // and state variables.
    /*
        function testPrivateFunc() public pure returns(string memory) {
          return PrivateFunc()
        }
    */

    // Internal function call be called inside child contracts

    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}
