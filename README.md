
# Verifiably Random Lottery

## About

This project presents a fully automated proveably random Smart Contract Lottery where users can buy a lottery ticket by entering a raffle. It uses **Chainlink VRF** version 2.5 for randomness.

## User stories

1. Users should be able to enter the raffle by paying for a ticket. The ticket fees are going to be the prize the winner receives.
2. The lottery should automatically and programmatically draw a winner after a certain period.
3. Chainlink VRF should generate a provably random number.
4. Chainlink Automation should trigger the lottery draw regularly.

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```