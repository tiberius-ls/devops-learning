	#!/data/data/com.termux/files/usr/bin/bash

	set -u

	SOURCE="$HOME/projects/devops-learning"
	BACKUP_DIR="$HOME/backups"
	LOG_DIR="$HOME/logs"
	LOG_FILE="$LOG_DIR/backup.log"

	mkdir -p "$BACKUP_DIR" "$LOG_DIR" || exit 1

	log() {
	    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
	}

	log "Backup started"

	if [ ! -d "$SOURCE" ]; then
	    log "ERROR: Project directory not found"
	    echo "ERROR: Project directory not found."
	    exit 1
	fi

	TIMESTAMP=$(date +%Y%m%d-%H%M%S)
	ARCHIVE="$BACKUP_DIR/devops-learning-$TIMESTAMP.tar.gz"

	if tar -czf "$ARCHIVE" -C "$HOME/projects" devops-learning; then
	    log "SUCCESS: Backup created at $ARCHIVE"
	    echo "Backup completed successfully."
	    echo "Backup file: $ARCHIVE"
	else
	    log "ERROR: Backup creation failed"
	    echo "ERROR: Backup creation failed."
	    rm -f "$ARCHIVE"
	    exit 1
	fi
