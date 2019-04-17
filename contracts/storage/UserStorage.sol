pragma solidity >=0.4.24 <0.6.0;

contract UserStorage {

    struct User {
        string username;
        address myAddress;
    }

    User[] public users;

    function setUser(string memory username, address myAddress) public {
        users.push(User(username, myAddress));
    }

    function getUser(uint index) public view returns (string memory username, address myAddress) {
        return (users[index].username, users[index].myAddress);
    }

    function getCountUser() public view returns (uint) {
        return users.length;
    }
}