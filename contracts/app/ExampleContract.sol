pragma solidity >=0.4.24 <0.6.0;

import "../state/StorageState.sol";

contract ExampleContract is StorageState {
    
    function register(string memory username) public {
        userStorage.setUser(username, msg.sender);   
    }
}