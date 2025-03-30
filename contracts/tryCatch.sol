// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
import "hardhat/console.sol";
// External contract used for try /catch expmles

contract Foo {
   address public owner; 
   
   constructor(address _owner) {
     // 0x838B76339eCE40b6A267b6Ce7cc7410bC20Ebe60
     console.log("address", address(0), address(this));
     require(_owner != address(0), "Invalid address");
     assert(_owner != 0x0000000000000000000000000000000000000000);

     owner = _owner;
   }

   function myFunc(uint x) public  pure returns (string memory) {
    require(x != 0, "Required failed");
    return "my func was called";
   }
}

contract Bar {
     event Log(string message);
     event LogBytes(bytes data);

     Foo public foo;

      // this contract is used for example of tey catch with external
     constructor() {
        foo = new Foo(msg.sender);
     }
     // Example of try / catch with external call
     // tryCatchExternalCall(0) => Log("External call failed")
     function tryCatchExternalCall(uint _i) public {
         try foo.myFunc(_i) returns (string memory result) {
            emit Log(result);
         } catch {
            emit Log("External call Failed");
         }
     } 
     // Example of try / catch with contract creation
     // tryCatchExternalCall(0x0000000000000000000000000000000000000000) => Log("External call Failed")
     // tryCatchExternalCall(0x0000000000000000000000000000000000000001) => LogBytes("")
     // tryCatchExternalCall(0x0000000000000000000000000000000000000002) => Log("my func was called")
     
     function tryCatchExternalCall(address _owner) public  {
        try new Foo(_owner) returns (Foo foo) {
          emit Log("Foo created");
        } catch Error(string memory reason) {
           emit Log(reason);
        } catch (bytes memory reason) {
            emit LogBytes(reason);
        }
     }


}