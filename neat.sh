#!/usr/bin/bash

set -euo 


downloads_folder="$HOME/Downloads"

files=$(find "$downloads_folder" -type f)

for file in $files; do
  
  date=$(stat -f %SB "$file" | cut -d ' ' -f 1)

  mkdir -p "$downloads_folder/$date"

  mv "$file" "$downloads_folder/$date"
done