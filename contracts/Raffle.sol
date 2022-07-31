// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

error Raffle__NotEnoughEtherEntered();

contract Raffle {
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        if (msg.value < i_entranceFee) revert Raffle__NotEnoughEtherEntered();
    }

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
