#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Generate the proving and verification keys
snarkjs groth16 setup ${DIST}/circuit.r1cs ${DIST}/circuit.ptau ${DIST}/circuit.zkey
snarkjs zkey export verificationkey ${DIST}/circuit.zkey ${DIST}/verification_key.json
