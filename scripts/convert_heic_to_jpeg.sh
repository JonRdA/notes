#!/bin/bash

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <originDir> <destinationDir>"
    exit 1
fi

# Assign arguments to variables
originDir="$1"
destinationDir="$2"

# Ensure destination directory exists
mkdir -p "$destinationDir"

# Convert .HEIC files to .JPEG
for file in "$originDir"/*/*.HEIC; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file" .HEIC)
        convert "$file" "$destinationDir/$filename.jpg"
    else
        echo "No HEIC files found in $originDir"
    fi
done

# Copy .MOV, .JPEG, .JPG, and .PNG files to the destination directory
find "$originDir" -type f \( -iname "*.mov" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.png" \) -exec cp {} "$destinationDir" \;

echo "Conversion and copy process completed."

