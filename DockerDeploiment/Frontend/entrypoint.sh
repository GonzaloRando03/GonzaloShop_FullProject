#!/bin/sh
# Añadimos constante con la dirección del servidor GQL en el fichero env
if [ $1 ]; then
    echo "export const GQL_ADDR = \"$1\""> GonzaloShop_Frontend/src/utils/env.ts
fi

service apache2 start
cd GonzaloShop_Frontend/
npm install
npm run build
cp -r build/* /var/www/html/
service apache2 reload 
tail -f /dev/null
