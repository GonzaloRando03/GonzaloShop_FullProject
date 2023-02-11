#!/bin/sh
cd GonzaloShop_Buy_Microservice/
composer update
composer install
php artisan serve
#node index.js
tail -f /dev/null