//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
// import {Script} "forge-std/Script.sol";
import {Script} from "../lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script{
   function run() external returns(SimpleStorage){
    vm.startBroadcast();// it will say hey everything above this line u should actually send to rpc
    SimpleStorage simpleStorage = new SimpleStorage(); // will create new contract between start-stop
    vm.stopBroadcast();
    return simpleStorage;
   }
}

//run commands in terminal :-- forge script script/DeploySimpleStorage.s.sol 