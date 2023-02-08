FROM node:19-alpine3.16
RUN apk update 
RUN apk add nano git curl
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Product_Microservice.git
COPY ./entrypoint.sh /
