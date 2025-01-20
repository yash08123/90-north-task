cd chat_app
export DJANGO_SETTINGS_MODULE=chat_app.settings
daphne -b 0.0.0.0 -p 8000 chat_app.asgi:application
