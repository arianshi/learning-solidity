// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract PureFunction {
      uint256 num1 = 5;
      uint256 num2 = 13;

      function getData() public pure returns (uint256, uint256) {

        // TypeError: Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
        // return (num1, num2);
      }


      function getData1() public pure returns (uint256, uint256) {
        uint256 noNum1 = 344;
        uint256 noNum2 = 225;

        return (noNum1, noNum2);
      }

      //  function getData2() public pure returns (uint256, uint256) {
      //   uint256 noNum1 = 344;
      //   uint256 noNum2 = 225;

      //   // TypeError: Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
      //   uint256 product = num1 + noNum1;
      //   uint256 total = num2 + noNum2;

      //   return (product, total);
      // }

      function getData3() public view  returns (uint256, uint256) {
        uint256 noNum1 = 344;
        // Warning: Unused local variable.
        uint256 noNum2 = 225;

        // TypeError: Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
        uint256 product = num1 + noNum1;
        uint256 total = num2 + noNum2;

        return (product, total);
      }
}