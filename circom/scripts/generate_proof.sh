#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Generate the proof and public inputs
snarkjs groth16 prove ${DIST}/circuit.pk ${DIST}/circuit.wtns ${DIST}/circuit.pf.json ${DIST}/circuit.inst.json
