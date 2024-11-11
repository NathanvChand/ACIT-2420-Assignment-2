#!/bin/bash

#This makes sure the user has root permissions. EUID is the user id, 0 is a positional parameter.
if [[ $EUID -ne 0 ]]; then
  echo "USE root you menace!!!"
  exit 1
fi

# Call the first script (downloading packages)
echo "Starting pack download"
./Package_Installation.sh

# If script1 fails, then exit
if [[ $? -ne 0 ]]; then exit 1; fi

# call the second script
./Linked_files.sh

# If script1 fails, exit
if [[ $? -ne 0 ]]; then exit 1; fi
