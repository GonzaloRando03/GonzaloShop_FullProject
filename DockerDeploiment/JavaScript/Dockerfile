FROM node:19.6.0-bullseye

# Actualizamos e instalamos todo lo necesario
RUN apt update 
RUN apt install nano git curl -y

# Clonamos el repositorio de GitHub
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Product_Microservice.git

# Copiamos el entrypoint
COPY ./entrypoint.sh /
