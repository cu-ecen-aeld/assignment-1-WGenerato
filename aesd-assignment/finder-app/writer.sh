#!/bin/sh

writefile=$1 
writestr=$2

if [ -z "$1" ] || [ -z "$2"   ]
then
    echo "Error: One of the required parameters is not declared."
    exit 1
fi

mkdir -p "$(dirname "$writefile")" # Create the directory path if it doesn't exist


echo "$writestr" > "$writefile" # Write the content/string to the file


if [ $? -ne 0 ]
then
    echo "Error: Failed to write to $writefile"
    exit 1
fi

echo "Content has been written to $writefile successfully."
