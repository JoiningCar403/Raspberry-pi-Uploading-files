#!/bin/bash

REPO_URL="https://github.com/username/repository.git"
CLONE_DIR="repository"

# Check if the directory exists
if [ -d "$CLONE_DIR" ]; then
    # If it exists, pull the latest changes
    cd $CLONE_DIR
    git pull origin main
else
    # If it does not exist, clone the repository
    git clone $REPO_URL
fi
