// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

contract KoinerERC20 {
    mapping(address => uint256) private s_balances;

    function name() public view returns (string memory) {}

    function decimals() public view returns (uint8) {}

    function totalSupply() public view returns (uint256) {}

    function balanceOf(address _address) public view returns (uint256) {
        return s_balances[_address];
    }

    function transfer(address _to, uint256 _amount) public {
        uint256 previosBalances = balanceOf(msg.sender) + balanceOf(_to);
        s_balances[msg.sender] -= _amount;
        s_balances[_to] += _amount;
        require(balanceOf(msg.sender) + balanceOf(_to) == previosBalances);
    }
}
