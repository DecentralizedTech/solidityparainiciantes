// Versão do compilador
pragma solidity ^0.8.4;

// Definição do contrato
contract NomeDoContrato {
    // Variáveis de estado
    uint public variavelDeEstado;
    
    // Eventos
    event LogEvento(address indexed de, uint valor);

    // Modificadores
    modifier onlyOwner {
        require(msg.sender == owner, "Somente o proprietário pode executar isso");
        _;
    }

    // Funções
    function nomeFuncao(uint _valor) public onlyOwner {
        variavelDeEstado = _valor;
        emit LogEvento(msg.sender, _valor);
    }
}
