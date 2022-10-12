// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// Objectives
// 1. Get funds from users
// 2. Withdraw funds
// 3. Set a minimum funding value in USD

contract FundMe {
    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        require(msg.value > 1e18, "You need to spend at least 1 ETH");

        // if the conditions on the require above are not met, any gas spent doing
        // computations **after** the require statement will be refunded to the user but the
        // gas spent before the require statement will not be refunded
    }

    // function withdraw() {}
}
