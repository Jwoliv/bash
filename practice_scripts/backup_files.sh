#!/bin/bash

DEFAULT_COMPRESSION_METHOD=gzip


SOURCE_DIRECTORY=$1
DESTINATION_DIRECTORY=$2
COMPRESSION_METHOD=${3:-$DEFAULT_COMPRESSION_METHOD}

usage() {
  echo "
      Usage: $0 [SOURCE_DIRECTORY] [DESTINATION_DIRECTORY] [COMPRESSION_METHOD]
      \$1 - SOURCE_DIRECTORY       - Directory to back up
      \$2 - DESTINATION_DIRECTORY  - Directory where the backup will be stored
      \$3 - COMPRESSION_METHOD     - Compression method (gzip, bzip2, xz). Default is gzip."
  exit 1
}

if [[ $# -lt 2 ]]; then
  usage
fi

if [[ ! -d $SOURCE_DIRECTORY ]]; then
  echo "
    [!] you inputed wrong directorty
    [!] please repeat with correct path
    [!] current path is invalid $SOURCE_DIRECTORY
  "
  exit 1
elif [[ $SOURCE_DIRECTORY = $DESTINATION_DIRECTORY ]]; then
  echo "[!] source and destination directories must be differ"
  exit 1
fi

case $COMPRESSION_METHOD in
  gzip)
    COMPRESS_CMD="tar -czvf"
    EXTENSION="tar.gz"
    ;;
  bzip2)
    COMPRESS_CMD="tar -cjvf"
    EXTENSION="tar.bz2"
    ;;
  xz)
    COMPRESS_CMD="tar -cJvf"
    EXTENSION="tar.xz"
    ;;
  *)
    echo "Error: Unsupported compression method '$COMPRESSION_METHOD'. Supported methods are gzip, bzip2, and xz."
    exit 1
    ;;
esac

if [[ ! -d $DESTINATION_DIRECTORY ]]; then
  mkdir -p $DESTINATION_DIRECTORY
fi

BACKUP_DIRECTORY="$DESTINATION_DIRECTORY/backup-$(date +%Y%m%d%H%M%S).$EXTENSION"

$COMPRESS_CMD "$BACKUP_DIRECTORY" -C "$SOURCE_DIRECTORY" .

if [[ $? -ne 0 ]]; then
  echo "Error: Backup failed"
  exit 1
else
  echo "Backup successful: $BACKUP_DIRECTORY"
  exit 0
fi
echo "============="
echo "Finish script"
echo "============="
