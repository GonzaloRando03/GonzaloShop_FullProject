#!/bin/bash
cd /var/www/html/
php artisan migrate
php artisan octane:start --server="swoole" --host="0.0.0.0" 
tail -f /dev/null