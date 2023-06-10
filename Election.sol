pragma solidity ^0.8.0;

contract Election {
    enum State { Created, Voting, Ended }
    State public state;

    constructor() {
        state = State.Created;
    }

    function startVoting() public {
        state = State.Voting;
    }

    function endVoting() public {
        state = State.Ended;
    }
}
