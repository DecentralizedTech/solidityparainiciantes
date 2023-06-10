pragma solidity ^0.8.4;

contract SimpleBank {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only the contract owner can withdraw");
        payable(msg.sender).transfer(amount);
    }
}
