#!/bin/bash

# Define source the directories
source_bin="bin/"
source_config="config/"
source_bashrc="home/bashrc"

# Checking if the source directories and files exist ----------------------------------------
# Check if bin/ directory exists
if [[ ! -d "$source_bin" ]]; then
    echo "Error: bin directory not found."
    exit 1
fi
#check if config/ directory exists-----------------------------------------------------------
if [[ ! -d "$source_config" ]]; then
    echo "Error: config directory not found."
    exit 1
fi

#Check if home/bashrc exists-----------------------------------------------------------------
if [[ ! -d "$source_bashrc" ]]; then
    echo "Error: bashrc directory not found."
    exit 1
fi

#Making Symbolic Links-----------------------------------------------------------------------
#Link bin to ~/bin
ln -s "$PWD/$source_bin"* ~/bin
echo "Linked files from $source_bin to ~/bin"

#Link config to ~/.config--------------------------------------------------------------------
ln -s "$PWD/$source_config"* ~/.config
echo "Linked files from $source_config to ~/.config"

# Link bashrc file to ~/.bashrc--------------------------------------------------------------
ln -s "$PWD/$source_bashrc" ~/.bashrc
echo "Linked $source_bashrc to ~/.bashrc"
