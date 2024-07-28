#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Generate the proof and public inputs
snarkjs groth16 prove ${DIST}/circuit.zkey ${DIST}/witness.wtns ${DIST}/proof.json ${DIST}/public.json
