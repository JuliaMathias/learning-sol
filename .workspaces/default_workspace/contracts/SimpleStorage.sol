// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Remember to comment your code

// ^0.8.7; above this version is ok
// >=0.8.7 <0.9.0; in between these versions is ok

// contract address 0xd9145CCE52D386f254917e481eB44e9943F39138

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

    // State Variable Visibility states: public, private, internal
    // docs: https://docs.soliditylang.org/en/latest/contracts.html#visibility-and-getters

    uint256 public favoriteNumber; // if you don't assign a value to a uint, it initializes as 0

    // Function Visibility States: public, private, internal, external
    //docs: https://docs.soliditylang.org/en/latest/contracts.html#visibility-and-getters

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}
