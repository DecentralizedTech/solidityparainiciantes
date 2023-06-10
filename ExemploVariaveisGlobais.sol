pragma solidity ^0.8.4;

contract ExemploVariaveisGlobais {
    uint public blocoAtual;
    uint public dificuldade;
    uint public limiteGas;
    address public minerador;
    uint public valorTransacao;
    address public remetenteTransacao;
    uint public gasRestante;
    uint public timestampBloco;
    uint public precoGas;

    function atualizarVariaveis() public payable {
        blocoAtual = block.number;
        dificuldade = block.difficulty;
        limiteGas = block.gaslimit;
        minerador = block.coinbase;
        valorTransacao = msg.value;
        remetenteTransacao = msg.sender;
        gasRestante = gasleft();
        timestampBloco = block.timestamp;
        precoGas = tx.gasprice;
    }
}
