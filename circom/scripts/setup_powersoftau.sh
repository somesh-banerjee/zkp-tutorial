#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Generate and prepare the Powers of Tau
snarkjs powersoftau new bn128 12 ${DIST}/tmp.ptau -v
snarkjs powersoftau prepare phase2 ${DIST}/tmp.ptau ${DIST}/circuit.ptau -v
rm ${DIST}/tmp.ptau
