FROM node:19.6.0-bullseye

# Actualizamos e instalamos lo necesario para correr nuestra aplicacion
RUN apt update 
RUN apt install nano git curl apache2 -y

# Clonamos el repositorio de GitHub
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Frontend.git 

# Añadimos constante con la dirección del servidor GQL en el fichero env
RUN echo "export const GQL_ADDR = \"http://127.0.0.1:4500\""> GonzaloShop_Frontend/src/utils/env.ts

# Copiamos el entrypoint
COPY ./entrypoint.sh /
