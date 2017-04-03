# scothbox-php7-phpmyadmin  
Just a simple custom Scotch Box form [https://box.scotch.io](https://box.scotch.io)  _(v2.5)_  
1. update to **PHP 7.0**
2. add **PHPMyAdmin**
3. updates for **npm**, **nodejs** and **composer**
4. and a simple empty bootstrap file for your customs commands ...

## Get Started
Just follow the instructions in [https://box.scotch.io](https://box.scotch.io)

## Shell files in VagrantFile
```sh
config.vm.provision "shell", path: "provisioner/update_php.sh"
config.vm.provision "shell", path: "provisioner/install_phpmyadmin.sh"
config.vm.provision "shell", path: "provisioner/updates.sh"
config.vm.provision "shell", path: "provisioner/bootstrap.sh"
```
For example, if you don't want PhpMyAdmin, just comment on the corresponding line
```sh
config.vm.provision "shell", path: "provisioner/update_php.sh"
#config.vm.provision "shell", path: "provisioner/install_phpmyadmin.sh"
config.vm.provision "shell", path: "provisioner/bootstrap.s
```

## PHP 7.0 update
```sh
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
```
* All modules necessary for the proper functioning of Scotch Box are installed for PHP 7.0
* PHP 5.6 is just disabled but still installed

## PHPMyAdmin
http://192.168.33.10/phpmyadmin/  
**Login : root**
**Password: root**  
Just comment the line in the VagrantFile if you don't want PHPMyAdmin.  
You can also use a solution like [Sequel Pro](https://www.sequelpro.com) for Mac or [HeidiSQL](https://www.heidisql.com) for Windows.

## Updates
```sh
#!/usr/bin/env bash	
echo "Update last version npm"
sudo npm install npm@latest -g
echo "update node ..."
sudo npm cache clean -f
sudo npm install -g n
sudo n lts
echo "Update composer ..."
sudo composer self-update
cd /home/vagrant/.composer
composer update 
```
**Npm lastest stable version.**  
**NodeJS latest LTS version.**  
**Composer latest stable version and update all packages includes in Scotch Box.**

## Bootstrap
Just incude every commands you want in this file.
>"You understand ?"  

-------------------------------------------------------------------------------------------------------  
  
![](https://media.giphy.com/media/2wUWy2yjpPtPq/giphy.gif)
