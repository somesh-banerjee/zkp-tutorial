# Circom Examples

## Prerequisite

Complete the documentation in the [Circom](https://docs.circom.io/) and have basic knowledge of the circom language.

## Description

This directory has circom circuits for different example, such as:
- [Addition]
- [Equality]
- [NotEqual]
- [PublicInput]
- [ForLoop]
- [Power]
- [Range]
- [Poseidon]
- [MiMCSalt]
- [QuadraticEquation]
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

To run the circuits, go to the respective directory whose circuit you want to work with and follow the steps as given in circom documentation.

I have created bash scripts to run the circuits. You can run the whole process by running the bash script.

```bash
# already in the circom directory
./scripts/run_all.sh <example_folder>
```

The outputs will be generated in the `dist` folder. For example, in public.json, the public output will be stored, and in proof.json, the proof output will be stored.

## Common Errors

- Most of the time, the error occurs at witness generation due to the wrong input. Make sure you are providing the correct input to the circuit.

- snarkJS: Error: Scalar size does not match: Probably some logic error.
    - check there is output in the circuit
    - if performing only additions, make sure add --O1 flag in the circom command for compilation