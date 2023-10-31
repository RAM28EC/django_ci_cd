#!/bin/bash
sudo apt install python3.10-venv
# Add this line after each command
set -e

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3.10 -m venv env || { echo 'Failed to create virtual environment.'; exit 1; }

fi

source env/bin/activate


pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi
