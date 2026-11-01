#!/data/data/com.termux/files/usr/bin/bash

LOG_DIR="$HOME/logs"
LOG_FILE="$LOG_DIR/backup.log"

mkdir -p "$LOG_DIR"

echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup practice started" >> "$LOG_FILE"

echo "This is a test log entry."
echo "Log written to: $LOG_FILE"
