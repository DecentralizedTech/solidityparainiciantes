pragma solidity ^0.8.0;

contract Library {
    struct Book {
        string title;
        string author;
        uint256 bookId;
    }

    Book public book;

    function setBook(string memory _title, string memory _author, uint256 _bookId) public {
        book = Book(_title, _author, _bookId);
    }
}
