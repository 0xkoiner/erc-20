// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Test, console2} from "forge-std/Test.sol";
import {DeployScript} from "script/DeployKoinerToken.s.sol";
import {KoinerERC20} from "src/koiner_token.sol";

contract KoinerERC20Test is Test {
    KoinerERC20 public koinerERC20;
    DeployScript public depoyScript;

    address addressA = makeAddr("addressA");
    address addressB = makeAddr("addressB");
    uint256 public constant startBalanceOfETH = 10 ether;
    uint256 public constant startBalanceOfTokens = 5 ether;

    function setUp() public {
        depoyScript = new DeployScript();
        koinerERC20 = depoyScript.run();
        vm.deal(addressA, startBalanceOfETH);
        vm.deal(addressB, startBalanceOfETH);

        vm.startPrank(msg.sender);
        koinerERC20.transfer(addressA, startBalanceOfTokens);
        koinerERC20.transfer(addressB, startBalanceOfTokens);
        vm.stopPrank();
    }

    function testBalanceOfaddressA() public {
        uint256 balanceOf = koinerERC20.balanceOf(addressA);
        assertEq(startBalanceOfTokens, balanceOf);
    }

    function testBalanceOfaddressB() public {
        uint256 balanceOf = koinerERC20.balanceOf(addressB);
        assertEq(startBalanceOfTokens, balanceOf);
    }

    function testAllowancesWorking() public {
        uint256 inititalAllowance = 1 ether;

        vm.startPrank(addressA);
        koinerERC20.approve(addressB, inititalAllowance);

        uint256 allowanceAmount = koinerERC20.allowance(addressA, addressB);
        assertEq(inititalAllowance, allowanceAmount);

        vm.stopPrank();

        vm.startPrank(addressB);
        uint256 transferAmount = 0.5 ether;
        koinerERC20.transferFrom(addressA, addressB, transferAmount);

        vm.stopPrank();
        assertEq(
            koinerERC20.balanceOf(addressA),
            startBalanceOfTokens - transferAmount
        );
        assertEq(
            koinerERC20.balanceOf(addressB),
            startBalanceOfTokens + transferAmount
        );
    }
}
