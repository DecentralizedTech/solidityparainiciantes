pragma solidity ^0.8.0;

contract ToDoList {
    // Estrutura para representar uma tarefa
    struct Task {
        string description;
        bool completed;
    }

    // Array para armazenar tarefas
    Task[] public tasks;

    // Evento que será emitido quando uma nova tarefa for adicionada
    event TaskCreated(string description, uint256 taskId);

    // Função para adicionar uma tarefa
    function addTask(string memory _description) public {
        tasks.push(Task(_description, false));
        emit TaskCreated(_description, tasks.length - 1);
    }
}
