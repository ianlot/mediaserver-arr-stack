#!/bin/bash

# cheking if this script running by root 
if [ "$EUID" -ne 0 ]; then
    echo "This script only can run as root user. Please use sudo or switch user to root."
    exit 1
fi

# creating user
username="mediaserver"
useradd -m -s /usr/sbin/nologin $username

# creating directories
base_dir="/home/$username"
folders=("jackett" "radarr" "sonarr" "tautulli" "overseerr")

for folder in "${folders[@]}"; do
    folder_path="$base_dir/$folder"
    config_path="$folder_path/config"

    # checking if the folder exist
    if [ -d "$folder_path" ]; then
        echo "The $folder directory already exist."
    else
        mkdir -p "$config_path"
        chown -R $username:$username "$config_path"
        echo "The $folder/config folder created."
    fi
done

echo "The mediaserver user and folders created. Login to mediaserver user is blocked."
