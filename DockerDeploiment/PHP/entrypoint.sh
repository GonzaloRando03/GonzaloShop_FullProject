#!/bin/bash
# Ejecutamos sleep para que la base de datos mysql tenga tiempo para arrancar y realizar la migración
sleep 60
# Realizamos las migraciones e iniciamos el servidor
cd /var/www/html/
php artisan migrate
php artisan octane:start --server="swoole" --host="0.0.0.0" 
tail -f /dev/null
