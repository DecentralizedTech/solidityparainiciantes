// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {
    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
}

contract MyContract {
    using SafeMath for uint;

    function add(uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
}
