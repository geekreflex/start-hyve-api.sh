#!/bin/bash

# Prompt the user to choose the server mode
echo "Enter the server mode you want to run:"
echo "1. Development"
echo "2. Production"
read -r mode

# Set the hyve-api directory path as a variable
HYVE_API_DIR="/absolute/path/Projects/hyve/hyve-api"

# Set the server command based on the chosen mode
if [ "$mode" == "1" ]; then
    SERVER_COMMAND="yarn dev"
elif [ "$mode" == "2" ]; then
    SERVER_COMMAND="yarn start"
else
    echo "Invalid input. Please run the script again and choose a valid option."
    exit 1
fi

# Change to the server directory and start the server
cd "$HYVE_API_DIR" || exit 1
eval "$SERVER_COMMAND"
