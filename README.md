# ACIT-2420-Assignment-2
ACIT 2420 assignment 2 submission

# Automated System Setup Scripts
---

This repository contains a set of Bash scripts designed to automate system setup tasks for new users on an Arch Linux environment. The project is divided into several scripts, each focused on a specific functionality. 

## Overview
---

This project includes:
1. **Package Installation**: Automates the installation of packages listed in a user-defined text file.
2. **Symbolic Links Setup**: Creates symbolic links to specified configuration directories for a streamlined setup.
3. **User Setup Script**: Creates a new user with a specified shell, home directory, default settings, group assignment, and prompts for a password.


## Scripts
---

### 1. Package Installation Script
The `Package_Installation.sh` script installs packages listed in the `User Packages.txt` file.

**Key Features:**
- Reads package names from `User Packages.txt`.
- Installs each package using `pacman` with the.
- Basic error handling to ensure the package file exists.

**Usage Example:**
```bash
./Package_Installation.sh
```

## 2. Symbolic Links Setup
The `Linked_files.sh` script simplifies configuration by creating symbolic links from your current setup to specified system directories.

**Links Created:**
- **Bin Directory**: Links all files from the `bin/` directory in the script's location to `~/bin`..
- **Config Directory**: Links all configuration files from the `config/` directory in the script's location to `~/.config`, ensuring user-specific configuration files are in place.
- **Bashrc File**: Links the specified `bashrc` file to `~/.bashrc`.

**Usage Example:**
```bash
./Linked_files.sh
```

## 3. User Setup Script
The `Create_User.sh` script allows you to set up a new user on the system with specific configurations.
### Features:
- **Username and Shell Specification**: Specify the username and shell with the `-u` and `-s` options. If no shell is specified, the script defaults to `/bin/bash`.
- **Home Directory Creation**: Automatically creates a home directory for the new user and copies default files from `/etc/skel`.
- **Primary Group Assignment**: Adds the new user to a primary group that matches their username.
- **Password Setup**: Prompts for a password for the new user.

### Usage:
Run the script with root privileges to create a new user:

```bash
sudo ./Create_User.sh -u <username> -s <shell>
```
## References
---

1. **Downloading Packages on Linux**  
   Baeldung. (n.d.). *How to Run a Script on Startup in Linux*. Retrieved from [https://www.baeldung.com/linux/run-script-on-startup](https://www.baeldung.com/linux/run-script-on-startup)

2. **Creating Symbolic Links in Linux**  
   FreeCodeCamp. (n.d.). *How to Create a Symbolic Link in Linux*. Retrieved from [https://www.freecodecamp.org/news/linux-ln-how-to-create-a-symbolic-link-in-linux-example-bash-command/](https://www.freecodecamp.org/news/linux-ln-how-to-create-a-symbolic-link-in-linux-example-bash-command/)

3. **Checking for Root User**  
   The Linux Documentation Project. (n.d.). *Advanced Bash Scripting Guide: Special Internal Variables - EUID*. Retrieved from [https://tldp.org/LDP/abs/html/internalvariables.html#EUID](https://tldp.org/LDP/abs/html/internalvariables.html#EUID)

4. **Special Characters in Bash**  
   Clemson University. (n.d.). *Bash Scripting: Special Variables*. Retrieved from [https://people.computing.clemson.edu/~jmarty/courses/commonCourseContent/AdvancedModule-BashScripting/TutorialsPointUnixBasics/unix-special-variables.pdf](https://people.computing.clemson.edu/~jmarty/courses/commonCourseContent/AdvancedModule-BashScripting/TutorialsPointUnixBasics/unix-special-variables.pdf)

5. **Arch Linux Pacman Documentation**  
   Arch Linux. (n.d.). *Pacman - ArchWiki*. Retrieved from [https://wiki.archlinux.org/title/pacman](https://wiki.archlinux.org/title/pacman)

6. **getopts for Bash**  
   DigitalOcean. (2019). *How To Use Bash's getopts to Parse Flags in Scripts*. Retrieved from [https://www.digitalocean.com/community/tutorials/how-to-use-getopts-to-parse-flags-in-bash-scripts](https://www.digitalocean.com/community/tutorials/how-to-use-getopts-to-parse-flags-in-bash-scripts)

7. **User Management in Linux**  
   Red Hat. (2021). *Understanding Linux User Management*. Retrieved from [https://www.redhat.com/sysadmin/linux-user-management](https://www.redhat.com/sysadmin/linux-user-management)

---

