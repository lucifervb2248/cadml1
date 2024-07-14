#!/bin/bash

# Echo for debugging
echo "Building the project..."

# Ensure pip is available and upgrade it
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
python3 -m pip install numpy
# Install the requirements
python3 -m pip install --target . --upgrade -r /vercel/path0/requirements.txt

# Forcing to use python3.9 if it's available
python3.9 -m pip install -r /vercel/path0/requirements.txt

# Database migrations
echo "Make Migration..."
python3.9 /vercel/path0/manage.py makemigrations --noinput
python3.9 /vercel/path0/manage.py migrate --noinput

# Collect static files
echo "Collect Static..."
python3.9 /vercel/path0/manage.py collectstatic --noinput --clear
