#!/data/data/com.termux/files/usr/bin/bash

TEST_DIR="$HOME/this-directory-should-not-exist"

echo "Checking directory..."

if [ -d "$TEST_DIR" ]; then
    echo "SUCCESS: Directory exists."
else
    echo "ERROR: Directory was not found."
    exit 1
fi

echo "Check completed."
