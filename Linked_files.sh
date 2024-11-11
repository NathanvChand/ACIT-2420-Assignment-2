#!/bin/bash

# Define source the directories
source_bin="bin/"
source_config="config/"
source_bashrc="home/bashrc"

# Check if source directories and files exist
# Error handling: Check if bin/ directory exists
if [[ ! -d "$source_bin" ]]; then
    echo "Error: $source_bin directory not found."
    exit 1
fi
