// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Script} from "forge-std/Script.sol";
import {KoinerERC20} from "src/koiner_token.sol";

contract DeployScript is Script {
    uint256 public constant initSupply = 100e18;

    function run() external returns (KoinerERC20) {
        vm.startBroadcast();
        KoinerERC20 koinerERC20 = new KoinerERC20(initSupply);
        vm.stopBroadcast();

        return koinerERC20;
    }
}
