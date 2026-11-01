#!/data/data/com.termux/files/usr/bin/bash

echo "Starting the check..."

if [ -d "$HOME/projects/devops-learning" ]; then
    echo "SUCCESS: Project directory exists."
else
    echo "ERROR: Project directory was not found."
    exit 1
fi

echo "Check completed."
