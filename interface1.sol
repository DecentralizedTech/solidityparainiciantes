// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract MyContract {
    function transferERC20(IERC20 token, address recipient, uint256 amount) public {
        token.transfer(recipient, amount);
    }
}

