#!/bin/bash

#Creating the user --------------------------------------------------------------------------------

# handling errors
error_exit() {
    echo "Error: $1"
    exit 1
  }

#using getopts to assign new_user and user_shell to the options of -u and -s
while getopts ":u:s:" opt; do
    case $opt in
        u) new_user="$OPTARG" ;;    # -u for username
        s) user_shell="$OPTARG" ;;   # -s for shell
    esac
done
  
# user_shell is the variable we're checking if it's empty, and assigning it /bin/bash
if [[ -z "$user_shell" ]]; then
    user_shell="/bin/bash"
fi

# checks if the variable new_user is empty, will terminate the script if it is
if [[ -z "$new_user" ]]; then
    error_exit 
fi

# Creating new user with the specified shell and home directory
useradd -m -s "$user_shell" "$new_user" || error_exit "Failed to create user $new_user."

# Check if home directory was created, if not, then script is terminated
if [[ ! -d "/home/$new_user" ]]; then
    error_exit "Failed to create home directory for $new_user."
fi

#Copying /etc/skel into the user directory------------------------------------------------------------


