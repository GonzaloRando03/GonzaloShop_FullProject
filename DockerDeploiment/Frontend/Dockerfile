FROM node:19.6.0-bullseye

# Actualizamos e instalamos lo necesario para correr nuestra aplicacion
RUN apt update 
RUN apt install nano git curl apache2 -y

# Clonamos el repositorio de GitHub
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Frontend.git 

# Copiamos el entrypoint
COPY ./entrypoint.sh /
