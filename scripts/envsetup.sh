#!/bin/bash

# Check if running as superuser
if [ "$EUID" -ne 0 ]; then
    echo "Please run as superuser (with sudo)."
    exit 1
fi

# Check if virtual environment exists
if [ -d "env" ]; then
    echo "Python virtual environment exists."
else
    # Try to install python3-venv package if not installed
    apt-get update
    apt-get install -y python3-venv
    python3 -m venv env
fi

# Activate virtual environment
source env/bin/activate

# Install dependencies
pip3 install -r requirements.txt

# Check and create log folder
if [ -d "logs" ]; then
    echo "Log folder exists."
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

# Ensure proper permissions on log folder
chmod -R 777 logs
