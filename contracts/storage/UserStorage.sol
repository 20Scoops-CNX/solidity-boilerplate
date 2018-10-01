pragma solidity ^0.4.24;

contract UserStorage {

    struct User {
        string username;
        address myAddress;
    }

    User[] public users;

    function setUser(string username, address myAddress) public {
        users.push(User(username, myAddress));
    }

    function getUser(uint index) public view returns (string username, address myAddress) {
        return (users[index].username, users[index].myAddress);
    }

    function getCountUser() public view returns (uint) {
        return users.length;
    }
}