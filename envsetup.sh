#!/bin/bash

# Add error handling
set -e

echo "Current Working Directory: $(pwd)"
echo "PATH: $PATH"

sudo apt install python3.10-venv

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3.10 -m venv env || { echo 'Failed to create virtual environment.'; exit 1; }
fi

# Print the contents of the directory to verify the existence of env
ls -l

# Print the contents of env to see if activate is present
ls -l env

source env/bin/activate

pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi
