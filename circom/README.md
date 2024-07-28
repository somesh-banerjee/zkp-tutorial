# Circom Examples

## Prerequisite

Complete the documentation in the [Circom](https://docs.circom.io/) and have basic knowledge of the circom language.

## Description

This directory has circom circuits for different example, such as:
- [Addition]
- [Equality]
- [NotEqual]
- [Poseidon]
- [ForLoop]
- [Power]
- [Range]
- [Salt]
- [QuadraticEquation]
- [Compile]
- [Sudoku]
- [Sujiko]

The above list is ordered by difficulty level from low to high.

## How to run

Before running the circuits, make sure circom and snarkjs are installed in your system. If not, install them as described in the [Circom](https://docs.circom.io/) documentation.

#### Snarkjs

```bash
npm install -g snarkjs
```

#### Circom

```bash
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
git clone https://github.com/iden3/circom.git
cd circom
cargo build --release
cargo install --path circom
```

To run the circuits, go to the respective directory whose circuit you want to work with and follow the steps below:

1. Compile circuit

```bash
circom addition/circuit.circom --r1cs --wasm
```

2. Computing witness: The `input.json` file is already provided in the respective directory. You can modify the input.json file to test with different values.

```bash
