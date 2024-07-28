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

# Generate the witness
node ${DIST}/circuit_js/generate_witness.js ${DIST}/circuit_js/circuit.wasm ${FOLDER}/input.json ${DIST}/circuit.wtns
