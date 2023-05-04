#!/bin/bash
# Eliminamos los datos de la base de datos en caso de que exista
echo -e "use $MONGO_INITDB_DATABASE \n db.products.drop();" "\n""exit" | mongo

# Añadimos datos a la base de datos
echo Añadiendo datos a la base de datos
mongoimport --db $MONGO_INITDB_DATABASE --collection products --file /etc/mongo/data.json --jsonArray
echo Datos añadidos

# Creamos los usuarios con los que nos conectaremos a la base de datos
echo -e "use admin \n db.createUser({user: \"root\", pwd: \"$MONGO_INITDB_PASSWORD\", roles: [ { role: \"userAdminAnyDatabase\", db: \"admin\" } ]});" "\n""exit" | mongo
echo -e "use $MONGO_INITDB_DATABASE \n db.createUser({ user: \"$MONGO_INITDB_USERNAME\", pwd: \"$MONGO_INITDB_PASSWORD\", roles: [ { \"role\" : \"readWrite\", \"db\" : \"$MONGO_INITDB_DATABASE\" }] });" "\n""exit" | mongo

exit 0