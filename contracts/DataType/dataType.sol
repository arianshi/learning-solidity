// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.23;

contract DataTypes {

    bool public hey;
    bool public no = true; 

    // UNIT 
    /*
    uint8  //  ranges 0 - 2 ** 8 - 1    // 255
    uint16 //  ranges 0 - 2 ** 16 - 1   // 65535
    uint256 // ranges 0 - 2 ** 256 - 1  
    */

    // positive number
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;

    // negative number
    // int256 // ranges -2 * 255 to 2 ** 255 - 1
    // int128 // ranges -2 * 128 to 2 ** 128 - 1

    int public i8 = -1;
    int public i256 = 456;
    int public i = -1234;

    // add min or max number

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // Array
    // The data types byte represent a sequence of types, has two types
    // Fixed sized bytes arrays
    // Dynamically sized bytes array

    bytes1 public a;
    bytes1 public b;

    bytes1 public c = 0xb5;
    bytes1 public d = 0x56;

    // Address types

    address public heyaddress;
    address public addr = 0x278553E51f15310ACa8Bf680aa7FA52f502549bc;

    // Defaults values

    bool public defaultBool; // false
    uint public defaultNumber; // 0
    int public defaultInt; // 0
    address public defaultAddress; // 0x0000000000000000000000000000000000000000
    bytes1 public defaultBytes1; // 0x00


}