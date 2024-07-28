#!/bin/bash

# Check if the folder name is provided
if [ -z "$1" ]; then
  echo "Error: Folder name not provided."
  echo "Usage: $0 folder_name"
  exit 1
fi

FOLDER=$1
DIST=dist

# Create dist directory if it does not exist
mkdir -p ${DIST}

# Compile the circuit
circom ${FOLDER}/circuit.circom --r1cs --wasm --output ${DIST}
