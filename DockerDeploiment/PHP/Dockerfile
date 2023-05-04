FROM php:8.1.9-fpm-alpine

# Actualizamos e instalamos los paquetes necesarios
RUN apk --no-cache upgrade && \
    apk --no-cache add bash git sudo openssh libssh2 libxml2-dev oniguruma-dev autoconf gcc g++ make npm freetype-dev libjpeg-turbo-dev libpng-dev libzip-dev

# Instalamos las extensiones de PHP
RUN pecl channel-update pecl.php.net
RUN pecl install pcov swoole
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install mbstring xml  pcntl gd zip sockets pdo  pdo_mysql bcmath soap
RUN docker-php-ext-enable mbstring xml gd  zip pcov pcntl sockets bcmath pdo  pdo_mysql soap swoole
RUN docker-php-ext-install pdo pdo_mysql sockets
RUN curl -sS https://getcomposer.org/installer​ | php -- \
     --install-dir=/usr/local/bin --filename=composer

# Añadimos composer a nuestro contenedor
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY --from=spiralscout/roadrunner:2.4.2 /usr/bin/rr /usr/bin/rr

# Clonamos el proyecto de GitHub
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Buy_Microservice.git .

# Instalamos el proyecto 
RUN composer install
RUN composer require laravel/octane spiral/roadrunner
RUN npm install --global yarn
RUN yarn
COPY ./.env .

# Realizamos las migraciones y preparamos el despliegue
RUN php artisan key:generate
RUN php artisan octane:install --server="swoole"

# Copiamos el entrypoint
COPY ./entrypoint.sh /
COPY ./.env /GonzaloShop_Buy_Microservice/


EXPOSE 8000