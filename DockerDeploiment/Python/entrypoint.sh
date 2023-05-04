#!/bin/bash
cd /deploy/app

# Hacemos las migraciones
python3 manage.py makemigrations
python3 manage.py migrate

# Iniciamos el servidor
python3 manage.py runserver 0.0.0.0:8000
tail -f /dev/null