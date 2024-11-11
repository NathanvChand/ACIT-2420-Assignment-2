#!/bin/bash

# Define source the directories
source_bin="bin/"
source_config="config/"
source_bashrc="home/bashrc"

# Checking if the source directories and files exist ----------------------------------------
# Check if bin/ directory exists
if [[ ! -d "$source_bin" ]]; then
    echo "Error: $source_bin directory not found."
    exit 1
fi
#check if config/ directory exists-----------------------------------------------------------
if [[ ! -d "$source_config" ]]; then
    echo "Error: $source_bin directory not found."
    exit 1
fi

#Check if home/bashrc exists-----------------------------------------------------------------
if [[ ! -d "$source_bashrc" ]]; then
    echo "Error: $source_bin directory not found."
    exit 1
fi
