# build.sh
#!/usr/bin/env bash
# Exit on error
set -o errexit

# Navigate to the app directory
cd chat_app

# Install Python dependencies
pip install -r requirements.txt

# render.yaml
services:
  - type: web
    name: django-chat-app
    env: python
    buildCommand: "./build.sh"
    startCommand: "daphne chat_app.asgi:application --port $PORT --bind 0.0.0.0"
    envVars:
      - key: PYTHON_VERSION
        value: 3.9.0
      - key: DJANGO_SECRET_KEY
        generateValue: true
      - key: DJANGO_DEBUG
        value: false

# requirements.txt (update your existing file)
django
channels
daphne
channels_redis