pragma solidity ^0.4.24;

import "../state/StorageState.sol";

contract ExampleContract is StorageState {
    
    function register(string username) public {
        userStorage.setUser(username, msg.sender);   
    }
}