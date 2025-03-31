// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IERC20 {
    function transfer(address, uint) external ;
}

contract Token {
    function transfer(address, uint) external  {} 
}
contract AbiEncode {
    // Test  
   function test(address _contract, bytes calldata data) external {
      (bool ok, ) = _contract.call(data);
      require(ok, "call failed");
   }
   // encode with singnature
   function encodeWithSingature(address to , uint amount) external pure returns (bytes memory) {
      // encodeWithSignature adddress amount
      return abi.encodeWithSignature("transfer(address, uint256)", to , amount);
   }
   // encdoe with selector
   function encodeWithSelector(address to, uint amount) 
   external  
   pure 
   returns (bytes memory) {
     // encodeWithSelector pass interface
     // Type is not checked - (IERC20.transfer.selector, ture, amount)
     return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
   }
    // encode call 
    function encodeCall(address to, uint amount) external  pure returns (bytes memory) {
        // Typo and type errors will not compile
        return  abi.encodeCall(IERC20.transfer, (to, amount));
    }
}