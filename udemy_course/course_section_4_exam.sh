#!/bin/bash

count_of_files_in_directory() {
  local DIRECTORY="$1"
  local COUNT_FILES=0

  for ITEM in "$DIRECTORY"/*; do
    if [[ -f $ITEM ]]; then
      ((COUNT_FILES++))
    elif [[ -d $ITEM ]]; then
      ((COUNT_FILES += $(count_of_files_in_directory $ITEM)))
    fi
  done
  echo $COUNT_FILES
}

print_count_files() {
  local DIRECTORY=$1
  local COUNT_FILES=$(count_of_files_in_directory $DIRECTORY)
  echo "Count of the files in the directory $DIRECTORY is [$COUNT_FILES]"
}

print_count_files .
print_count_files /mnt/d/it/docker
print_count_files ../first_practice
