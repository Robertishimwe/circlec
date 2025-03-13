#!/bin/bash

# Define the range of files to rename
start=35
end=67
new_start=1

# Loop through the range and rename the files
for ((i=start; i<=end; i++)); do
    old_file=$(printf "IMG-20250307-WA%04d.jpg" $i)
    new_file=$(printf "IMG-20250307-WA%04d.jpg" $((new_start + i - start)))
    if [ -f "$old_file" ]; then
        mv "$old_file" "$new_file"
        echo "Renamed $old_file to $new_file"
    else
        echo "File $old_file does not exist"
    fi
done