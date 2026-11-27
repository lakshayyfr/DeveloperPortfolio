
#!/bin/bash
# Author: Lakshay Saini
# Purpose: Create a compressed folder backup

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# Check if the folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

SOURCE=$(realpath -- "$SOURCE")

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR" || exit 1

# Generate timestamp and filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create compressed backup
if tar -czf "$BACKUP_FILE" \
    -C "$(dirname "$SOURCE")" \
    -- "$(basename "$SOURCE")"; then

    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "Filename: $(basename "$BACKUP_FILE")"
    echo "Size: $SIZE"
    echo "Location: $BACKUP_DIR"

    echo "$TIMESTAMP - SUCCESS - $BACKUP_FILE" \
        >> "$BACKUP_DIR/backup.log"

else
    echo "Error: Backup failed."

    echo "$TIMESTAMP - FAILED - $SOURCE" \
        >> "$BACKUP_DIR/backup.log"

    exit 1
fi
