# ACIT-2420-Assignment-2
ACIT 2420 assignment 2 submission

# Automated System Setup Scripts-----------------------------------------------------------------------------------------------------

This repository contains a set of Bash scripts designed to automate system setup tasks for new users on an Arch Linux environment. The project is divided into several scripts, each focused on a specific functionality. 

## Overview--------------------------------------------------------------------------------------------------------------------------

This project includes:
1. **Package Installation**: Automates the installation of packages listed in a user-defined text file.
2. **Symbolic Links Setup**: Creates symbolic links to specified configuration directories for a streamlined setup.
3. **User Setup Script**: Creates a new user with a specified shell, home directory, default settings, group assignment, and prompts for a password.
4. **Master Script**: Calls each script sequentially to execute the complete setup process.

## Scripts--------------------------------------------------------------------------------------------------------------------------

### 1. Package Installation Script
The `Package_Installation.sh` script installs packages listed in the `User Packages.txt` file.

**Key Features:**
- Reads package names from `User Packages.txt`.
- Installs each package using `pacman` with the `--noconfirm` flag for unattended installation.
- Basic error handling to ensure the package file exists.

**Usage Example:**
```bash
./Package_Installation.sh

## 2. Symbolic Links Setup
The `Linked_files.sh` script simplifies configuration by creating symbolic links from your current setup to specified system directories.

**Links Created:**
- **Bin Directory**: Links all files from the `bin/` directory in the script's location to `~/bin`, allowing quick access to executable files.
- **Config Directory**: Links all configuration files from the `config/` directory in the script's location to `~/.config`, ensuring user-specific configuration files are in place.
- **Bashrc File**: Links the specified `bashrc` file to `~/.bashrc`, setting up user-specific Bash settings.

**Usage Example:**
```bash
./Linked_files.sh

## 3. User Setup Script
The `Create_User.sh` script allows you to set up a new user on the system with specific configurations, providing an easy way to add users without needing interactive input or extra user management tools.

### Features:
- **Username and Shell Specification**: Specify the username and shell with the `-u` and `-s` options. If no shell is specified, the script defaults to `/bin/bash`.
- **Home Directory Creation**: Automatically creates a home directory for the new user and copies default files from `/etc/skel`.
- **Primary Group Assignment**: Adds the new user to a primary group that matches their username.
- **Password Setup**: Prompts for a password for the new user, ensuring that the account is secure.

### Usage:
Run the script with root privileges to create a new user:
```bash
sudo ./Create_User.sh -u <username> -s <shell>

