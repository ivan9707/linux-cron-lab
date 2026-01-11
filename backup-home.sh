#!/bin/bash

# Get today's date
DATE=$(date +%F)

# Where to store backups
BACKUP_DIR="$HOME/backups"

# Create the backup folder if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a compressed backup of the home directory
tar -czf "$BACKUP_DIR/home-backup-$DATE.tar.gz" "$HOME"

# Print confirmation
echo "Backup created: $BACKUP_DIR/home-backup-$DATE.tar.gz"