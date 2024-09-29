// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenScript is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() public returns (OurToken ourToken) {
        vm.startBroadcast();
        ourToken = new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}
