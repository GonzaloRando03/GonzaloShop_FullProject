FROM debian:11
RUN apt-get update 
RUN apt-get install curl unzip wget gnupg2 ca-certificates apt-transport-https software-properties-common git ucf psmisc -y
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list
RUN wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
RUN apt-get update
RUN apt-get install php8.0 php8.0-mysql php-curl php-cli php-mbstring php-xml -y
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN git clone https://github.com/GonzaloRando03/GonzaloShop_Buy_Microservice.git
COPY ./entrypoint.sh /
