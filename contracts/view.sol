// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract View {
   uint256 Num1 = 2;
   uint256 Num2 = 8;

   // Using view keyword just see state variable
   function getResults() public view returns(uint256, uint256) {
    return (Num1, Num2);
   }

   // using view calculate data
   function getResults1() public view returns(uint256 product, uint256 total) {
     product = Num1 * Num2;
     total = Num1 + Num2;
   }

   // using view change data
   /* 
   function getResults2() public view returns(uint256 product, uint256 total) {

    // TypeError: Function cannot be declared as view because this expression (potentially) modifies the state. 
    Num1 += 4;
    Num2 += 5;

     product = Num1 * Num2;
     total = Num1 + Num2;
   }
   */

    // Remove view keyword to calculate data
   function getResults2() public returns(uint256 product, uint256 total) {

     Num1 += 4;
     Num2 += 5;

     product = Num1 * Num2;
     total = Num1 + Num2;
   }
   
}