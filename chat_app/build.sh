# build.sh
#!/usr/bin/env bash
# Exit on error
set -o errexit

# Navigate to the app directory
cd chat_app

# Install Python dependencies
pip install -r requirements.txt


python manage.py migrate

ls 

pwd



