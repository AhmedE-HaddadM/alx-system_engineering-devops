#!/bin/bash

# Function to remove the last empty line from a file
remove_last_empty_line() {
    sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' "$1"
}

# Loop through all .sh files in the current directory
for file in *.sh; do
    # Check if the file exists and is a regular file
    if [ -f "$file" ]; then
        # Call the function to remove the last empty line from the file
        remove_last_empty_line "$file"
    fi
done
