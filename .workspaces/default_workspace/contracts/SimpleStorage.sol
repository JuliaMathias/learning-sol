// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Remember to comment your code

// ^0.8.7; above this version is ok
// >=0.8.7 <0.9.0; in between these versions is ok

contract SimpleStorage {
    // main Solidity types: boolean, uint, int, address, bytes
    // docs: https://docs.soliditylang.org/en/latest/types.html

    // variable declarations
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 8;
    // string favoriteNumberInText = "Eight";
    // int256 favoriteInt = 8;
    // address myAddress = 0x1846188e76274b6dDa5A23B755E527C800d8F382;
    // bytes32 favoritesBytes = "cat";

    uint256 favoriteNumber; // if you don't assign a value to a uint, it initializes as 0
}
