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