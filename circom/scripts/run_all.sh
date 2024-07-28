#!/bin/bash

# Check if the folder name is provided
if [ -z "$1" ]; then
  echo "Error: Folder name not provided."
  echo "Usage: $0 folder_name"
  exit 1
fi

FOLDER=$1

# Create dist directory if it does not exist
DIST=dist
mkdir -p ${DIST}

# Function to check if the previous command was successful
check_success() {
  if [ $? -ne 0 ]; then
    echo "Error: $1 failed."
    exit 1
  fi
}

# Clean the dist directory
./scripts/clean.sh

# Compile the circuit
./scripts/compile.sh ${FOLDER}
check_success "Compile circuit"

# Set up Powers of Tau
./scripts/setup_powersoftau.sh ${FOLDER}
check_success "Set up Powers of Tau"

# Generate keys
./scripts/generate_keys.sh ${FOLDER}
check_success "Generate keys"

# Generate witness
./scripts/generate_witness.sh ${FOLDER}
check_success "Generate witness"

# Generate proof
./scripts/generate_proof.sh ${FOLDER}
check_success "Generate proof"

# Verify proof
./scripts/verify.sh ${FOLDER}
check_success "Verify proof"

echo "All steps completed successfully."
