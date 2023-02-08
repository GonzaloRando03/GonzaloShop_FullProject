#!/bin/sh
mongoimport --db gonzaloShop --collection products --file /etc/mongo/data.json --jsonArray
echo -e "use admin \n db.createUser({user: \"root\", pwd: \"root\", roles: [ { role: \"userAdminAnyDatabase\", db: \"admin\" } ]});" "\n""exit" | mongo
echo -e "use gonzaloShop \n db.createUser({ user: \"gonzalo\", pwd: \"12345\", roles: [ { \"role\" : \"readWrite\", \"db\" : \"gonzaloShop\" }] });" "\n""exit" | mongo -u root -p root --authenticationDatabase admin
exit 0