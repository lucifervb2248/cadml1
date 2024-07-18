#!/bin/bash

# Echo for debugging
echo "Building the project..."

# Ensure pip is available and upgrade it
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
#python3 -m pip install numpy==1.23.4 
python3 -m venv myenv
source myenv/bin/activate
myenv\Scripts\activate
python3 -m pip install -r requirements.txt


# Install the requirements
#python3 -m pip install --target . --upgrade -r /vercel/path0/requirements.txt

# Forcing to use python3.9 if it's available
python3.9 -m pip install -r /vercel/path0/requirements.txt --target /util

# Database migrations
echo "Make Migration..."


# Collect static files
echo "Collect Static..."
python3.9 /vercel/path0/manage.py collectstatic --noinput --clear
