// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract Raffle {

    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }
    
    function enterRaffle() public payable {
        if(msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
    }

    function pickWinner() public {}

    function getEntranceFee() external view returns(uint256) {
        return i_entranceFee;
    }
}
