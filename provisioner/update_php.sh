#!/usr/bin/env bash	
echo "Installing php 7.0 ..."
sudo apt-get update && apt-get upgrade
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.0 libapache2-mod-php7.0 php-pear php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-fpm php7.0-gd php7.0-imagick php7.0-intl php7.0-json php7.0-mcrypt php7.0-memcache php7.0-memcached php7.0-mongo php7.0-mysql php7.0-mysqlnd php7.0-pgsql php7.0-readline php7.0-redis php7.0-sqlite php7.0-mbstring php7.0-gettext php7.0-xml php7.0-zip
sudo a2dismod php5
sudo a2enmod php7.0
sudo apachectl restart
sudo service apache2 restart