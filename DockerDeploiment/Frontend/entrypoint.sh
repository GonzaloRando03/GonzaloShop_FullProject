#!/bin/sh
service apache2 start
cd GonzaloShop_Frontend/
npm install
npm run build
cp -r build/* /var/www/html/
service apache2 reload 
tail -f /dev/null