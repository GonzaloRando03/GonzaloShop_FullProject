#!/bin/bash
cd microservicio/code/
source ../bin/activate
pip install -r requeriments
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver
tail -f /dev/null