#!/bin/bash

source /var/lib/jenkins/workspace/paac/env/bin/activate

cd /var/lib/jenkins/workspace/paac/app
python3.10 manage.py makemigrations 
python3.10 manage.py migrate
python3.10 manage.py collectstatic --noinput
sudo systemctl restart gunicorn

echo "Migrations done"

cd /var/lib/jenkins/workspace/paac

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"



sudo systemctl daemon-reload
sudo systemctl start gunicorn

echo "Gunicorn has started."

sudo systemctl enable gunicorn

echo "Gunicorn has been enabled."

sudo systemctl restart gunicorn


sudo systemctl status gunicorn

