pragma solidity >=0.4.24 <0.6.0;

import "../storage/UserStorage.sol";
import "../storage/ProductStorage.sol";

contract StorageState {
    UserStorage public userStorage;
    ProductStorage public productStorage;
}