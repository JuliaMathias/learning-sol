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

    uint256 favoriteNumber; // if you don't assign a value to a uint, it initializes as 0

    //functions

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    uint256 public favoriteNumberPlusOne;

    // if a function is more computationally complex, the fees will also be more
    // expensive. So this function is more expensive than the one above.
    function store_and_add(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumberPlusOne = favoriteNumber + 1;
    }

    // there are two keywords in solidity that denote that you don't have to spend gas to
    // call them. Those are view and pure.

    // A view function disallows any modifications of state, so you're only allowed to
    // read from it.
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // a pure function also disallows you to read from blockchain state
    function add() public pure returns (uint256) {
        return (1 + 1);
    }

    // but if a gas-calling function calls a view or pure function, then it will cost
    // gas to call them

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // this is a dynamic array, because the size of the array is not fixed and not
    // specified in the declaration.
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People(_favoriteNumber, _name);
        people.push(newPerson);

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
