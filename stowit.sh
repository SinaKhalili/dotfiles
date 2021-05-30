#!/bin/bash

symlink_folders=(vim git spacemacs zsh tmux) 

if [ -z "$1" ]; then
    echo "Stowing the following:"
    for folder in "${symlink_folders[@]}"; do
        stow "$folder" && echo "$folder"
    done
elif [ "$1" == "-r" ]; then
    echo "Restowing the following:"
    for folder in "${symlink_folders[@]}"; do
        stow --restow "$folder" && echo "$folder"
    done
elif [ "$1" == "-h" ]; then
    echo "Usage: ./stowit.sh [options]"
    echo "  -r : restow"
else
    echo "Invalid option"
fi
