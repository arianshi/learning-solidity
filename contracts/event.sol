// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Event {
    // Event Declaration
    // Up to 3 prarams can be indexed
    event Log(address indexed sender, string message, uint age);
    event AnotherLog();
    /*
        [
            {
                "from": "0x5374AF24543dfB049387622DF3BE09E4eE083C40",
                "topic": "0xfd33e90d0eac940755277aa91045b95664988beeeafc4ed7d1281a6d83afbc00",
                "event": "Log",
                "args": {
                    "0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
                    "1": "Hi----",
                    "2": "90",
                    "sender": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
                    "message": "Hi----",
                    "age": "90"
                }
            },
            {
                "from": "0x5374AF24543dfB049387622DF3BE09E4eE083C40",
                "topic": "0xfe1a3ad11e425db4b8e6af35d11c50118826a496df73006fc724cb27f2b99946",
                "event": "AnotherLog",
                "args": {}
            }
        ]
    */
    function test() public {
      emit Log(msg.sender, "Hi----", 90);
      emit AnotherLog();
    }

}