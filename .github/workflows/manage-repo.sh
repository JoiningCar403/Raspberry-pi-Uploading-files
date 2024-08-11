#!/bin/bash

# Directory where the repository is located
REPO_DIR="/path/to/your/repository"

# Navigate to the repository directory
cd "$REPO_DIR" || { echo "Repository directory not found! Exiting."; exit 1; }

# Fetch the latest updates from the remote repository
git fetch origin

# Check if there are any new changes in the remote repository
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})

if [ "$LOCAL" != "$REMOTE" ]; then
    echo "New updates found! Pulling the latest changes."
    git pull origin main

    # Optional: Execute a script or command after updating
    ./backup_to_pi.sh
else
    echo "Repository is up to date. No changes to pull."
fi
