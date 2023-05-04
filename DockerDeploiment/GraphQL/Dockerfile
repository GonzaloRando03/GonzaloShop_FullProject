FROM node:19.6.0-bullseye
RUN apt update 
RUN apt install nano git curl -y
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_ServerGraphQL.git
COPY ./entrypoint.sh /
