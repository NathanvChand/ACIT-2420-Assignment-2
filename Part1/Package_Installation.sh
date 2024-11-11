#This file should install the user packages
#------------------------------------------------------------------

#Define your file that has the packages
file="User Packages.txt"

# Check if User Packages.txt exists
if [[ -f User packages.txt ]]; then
    if sudo pacman -S --noconfirm $(cat User Packages.txt);
else
    echo "Error: file not found!"
    exit 1
fi
