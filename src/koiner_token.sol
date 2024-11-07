// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract KoinerERC20 is ERC20 {
    constructor(uint256 _initialSupply) ERC20("Koiner", "KO") {
        _mint(msg.sender, _initialSupply);
    }
}
