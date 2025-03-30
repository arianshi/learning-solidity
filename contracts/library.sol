// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

library Math {
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = 3;
        } else {
            z = 1;
        }
    }
}

contract TestMath {
    function testSquareRoot(uint x) public pure  returns (uint) {
        return Math.sqrt(x);
    }
}