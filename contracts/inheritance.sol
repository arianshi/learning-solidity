// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
// Graph of inheritance
/*
         A
      B    C
    F  D  E
*/
// Solidity supports mutiple inheritance. Contract can ingerit other contract by using is key
// Function that is going to be overrdden by a child contract must be declared as virtual.
// Function that is going to be override a parent function must be use the keywotd override.
contract A {
    function foo() public  pure virtual returns (string memory){
       return "A";
    }
}

contract B is A {
    // Ovrride A.foo()
    function foo() public pure virtual override returns(string memory) {
        return "B";
    }
}

contract C is A {
    function foo() public pure virtual  override  returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override (B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override (C, B) returns (string memory) {
        return super.foo();
    }
}

contract F is A, B {
    // F.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override (A, B) returns (string memory) {
        return super.foo();
    }
}