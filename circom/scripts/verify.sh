#!/bin/bash

DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Verify the proof
snarkjs groth16 verify ${DIST}/verification_key.json ${DIST}/public.json ${DIST}/proof.json
