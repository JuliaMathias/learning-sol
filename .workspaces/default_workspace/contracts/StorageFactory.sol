// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

// smart contracts are composable because they can interact with each other and even
// programatically generate new contracts

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // Fetch the address of the simple storage from the array
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // Store the number in the simple storage
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // Fetch the address of the simple storage from the array
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // Get the number from the simple storage
        return simpleStorage.retrieve();
    }
}
