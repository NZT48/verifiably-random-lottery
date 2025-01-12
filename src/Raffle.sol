// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


/**
 * @title A sample Raffle Contract
 * @author NZT48
 * @notice This contract is for creating a sample raffle
 * @dev It implements Chainlink VRFv2.5 and Chainlink Automation
 */
contract Raffle {
    error Raffle_NotEnoughEthSent();

    uint256 private immutable i_entranceFee;
    // @dev Duration of the lottery in seconds
    uint256 private immutable i_interval;
    address payable[] private s_players;
    uint256 private s_lastTimeStamp;

    event EnteredRaffle(address indexed player);

    constructor(uint256 entranceFee, uint256 interval) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimeStamp = block.timestamp;
    }

    function enterRaffle() external payable {
        if(msg.value < i_entranceFee) revert Raffle_NotEnoughEthSent();
        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }

    function pickWinner() public {
        // check to see if enough time has passed
        if (block.timestamp - s_lastTimeStamp < i_interval) revert();

    }

    /* Getter Function */

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}