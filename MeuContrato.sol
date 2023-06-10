pragma solidity ^0.8.4;

contract MeuContrato {
    uint public valor;
    address public dono;

    constructor(uint _valor) {
        valor = _valor;
        dono = msg.sender;
    }
}
