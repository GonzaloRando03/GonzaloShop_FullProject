FROM python:3.12-rc-bullseye

# Actualizamos e instalamos los paquetes necesarios
RUN apt-get update 
RUN apt-get install nano git curl cargo default-libmysqlclient-dev build-essential -y

# Clonamos el codigo del repositorio de GitHub
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_User_Microservice.git /deploy/app

WORKDIR /deploy/app

# Instalamos las dependencias
RUN pip install -r requeriments

# Copiamos el entrypoint
COPY ./entrypoint.sh /
