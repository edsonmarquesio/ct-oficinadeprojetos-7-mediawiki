#!/bin/bash

### PreReqs Apache/PHP

sudo apt-get update -y &&
sudo apt-get install php php-apcu php-intl php-mbstring php-xml php-mysql php-calendar mariadb-server apache2 -y

### Download dos Binários

sudo chmod 777 /var/www
sudo wget -c https://releases.wikimedia.org/mediawiki/1.38/mediawiki-1.38.4.tar.gz &&
sudo tar -xf mediawiki-*.tar.gz -C /var/www/html &&
sudo mv /var/www/html/mediawiki-1.38.4 /var/www/html/w &&
sudo mv /var/www/html/w/* /var/www/html &&
sudo rm -f mediawiki-*.tar.gz &&
sudo rm -f /var/www/html/index.html

### Instalacao MediaWiki

cd /var/www/html
sudo php maintenance/install.php --dbname=my_wiki --dbserver="dbserver:3306" --installdbuser=admin --installdbpass=password --dbuser=admin --dbpass=password --server="http://localhost" --scriptpath="" --lang=en --pass=password "MediaWiki" "admin"

### Start do Apache

sudo service apache2 start




