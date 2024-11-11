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
useradd -m -s "$user_shell" "$new_user" || error_exit "can't create user $new_user."

# Check if home directory was created, if not, then script is terminated
if [[ ! -d "/home/$new_user" ]]; then
    error_exit "can't create home directory for $new_user."
fi

#Copying /etc/skel into the user directory------------------------------------------------------------

# Check if username was provided 
if [ -z "$new_user" ]; then
    error_exit "You must provide the username to copy skel files."
fi

# Copy default files from /etc/skel to the new user's home directory
cp -r /etc/skel/. "/home/$new_user/" || error_exit "couldn't copy skel files for $new_user."

#Adding user to a group--------------------------------------------------------------------------------

# this code :groupadd "new_user" adds the user to a group, if that doesnt work the script is terminated
groupadd "$new_user" || error_exit "Failed to create primary group for $new_user."

#this code just assigns the new_user to a group called "new_user", basically just putting then in their own group, or just terminating the script
usermod -g "$new_user" "$new_user" || error_exit "Failed to assign primary group to $new_user."

# making the users password----------------------------------------------------------------------------


#------------ Set User Password ------------

# the prompt for the user password
echo "Enter password for $new_user:"

passwd "$new_user" || error_exit "Failed to set password for $new_user."

echo "Password set for $new_user."





