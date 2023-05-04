FROM mongo:4.2.9-bionic

#Copiamos el script de para preparar nuestra base de datos 
COPY ./initGonzaloShopDB.sh /
RUN ./initGonzaloShopDB.sh 1> run.log 2> error.log