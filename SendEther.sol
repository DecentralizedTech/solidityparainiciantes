// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther {
    function send(address payable recipient) public payable {
        recipient.transfer(msg.value);
    }
}