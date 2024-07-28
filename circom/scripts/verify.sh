#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Verify the proof
snarkjs groth16 verify ${DIST}/circuit.vk ${DIST}/circuit.inst.json ${DIST}/circuit.pf.json
