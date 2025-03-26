// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract X {
    string public name;

    constructor(string memory _name) {
      name = _name;
    }
}

contract Y {
    string public text; 
    constructor(string memory _text) {
        text = _text;
    }
}

// There are two ways to initialize parent contract with parameters
// Pass the parameters here to in the inheritance list
contract B is X("Input to X"), Y("Input to Y") {

}

// Pass the parameters here in the constructor
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// Parent contructors are always called in the order of inheritance
// Regardless of the order of parent contract listed in the constructor of the child contract
// 1. X
// 2. Y
// 3. D
contract D is X, Y {
   // X - name, Y - text 
   constructor() X("X was called") Y("Y was called") {

   } 
}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E
contract E is X, Y {
   constructor() Y("Y was called") X("X was called") {

   }   
}

