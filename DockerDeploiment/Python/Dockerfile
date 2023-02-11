FROM python:3.12-rc-bullseye
RUN apt-get update 
RUN apt-get install nano git curl cargo default-libmysqlclient-dev build-essential -y
RUN python3 -m venv microservicio
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_User_Microservice.git microservicio/code
RUN cd microservicio/code/
RUN source ../bin/activate
RUN pip install -r requeriments
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
COPY ./entrypoint.sh /
