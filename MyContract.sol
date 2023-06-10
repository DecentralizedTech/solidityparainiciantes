pragma solidity ^0.8.0;

contract MyContract {
    // Evento para emitir o endereço do remetente e o valor enviado
    event Received(address sender, uint amount);

    // Função para receber Ether
    function receive() external payable {
        // Emitir um evento para registrar as informações do pagamento
        emit Received(msg.sender, msg.value);
    }
}
