#!/bin/bash
sudo apt install python3.10-venv

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3.10 -m venv env
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
