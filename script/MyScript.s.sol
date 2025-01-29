// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {VmSafe} from "forge-std/Vm.sol";
import {Script} from "forge-std/Script.sol";

import {console2 as console} from "forge-std/console2.sol";

import {ResourceMetering} from "@eth-optimism-bedrock/src/L1/ResourceMetering.sol";
import {Constants} from "@eth-optimism-bedrock/src/libraries/Constants.sol";

contract MyScript {
    function run() public {
        ResourceMetering.ResourceConfig memory defaultConfig = Constants
            .DEFAULT_RESOURCE_CONFIG();
    }
}
