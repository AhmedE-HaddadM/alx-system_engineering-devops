#!/bin/bash

# Function to remove the last empty line from a file
remove_last_empty_line() {
    sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' "$1"
}

# Loop through all text files in the current directory
for file in *; do
    # Check if the file exists and is a regular file
    if [ -f "$file" ]; then
        # Check if the file is a bash script (optional condition)
        # if [[ "$file" == *.sh ]]; then
        #     continue
        # fi
        
        # Call the function to remove the last empty line from the file
        remove_last_empty_line "$file"
    fi
done
