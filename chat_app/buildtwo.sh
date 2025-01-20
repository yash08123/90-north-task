cd chat_app
daphne -b 0.0.0.0 -p 8000 chat_app.asgi:application
