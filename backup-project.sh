#!/data/data/com.termux/files/usr/bin/bash

set -eu

SOURCE="$HOME/projects/devops-learning"
BACKUP_DIR="$HOME/backups"

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Project directory not found."
    exit 1
fi

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
ARCHIVE="$BACKUP_DIR/devops-learning-$TIMESTAMP.tar.gz"

tar -czf "$ARCHIVE" \
    -C "$HOME/projects" devops-learning

echo "Backup completed successfully."
echo "Backup file: $ARCHIVE"

ls -lh "$ARCHIVE"
