
# Build the project
echo "Building the project..."
python3 -m ensurepip --upgrade
pip3 install --upgrade pip

# Install the requirements
pip3 install --target . --upgrade -r /vercel/path0/requirements.txt
python3.9 -m pip install -r requirements.txt

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear
