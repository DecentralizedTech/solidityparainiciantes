// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CheckBalance {
    function getBalance(address addr) public view returns (uint) {
        return addr.balance;
    }
}
