// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


/**
 * @title A sample Raffle Contract
 * @author NZT48
 * @notice This contract is for creating a sample raffle
 * @dev It implements Chainlink VRFv2.5 and Chainlink Automation
 */
contract Raffle {
    uint256 private immutable i_entranceFee;

    error Raffle_NotEnoughEthSent();

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable {
        if(msg.value < i_entranceFee) revert Raffle_NotEnoughEthSent();

    }

    function pickWinner() public {

    }

    /* Getter Function */

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}