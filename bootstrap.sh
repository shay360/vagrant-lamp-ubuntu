# Update Packages
sudo apt-get update
# Upgrade Packages
sudo apt-get upgrade

# Basic Linux Stuff
sudo apt-get install -y git

# Apache
sudo apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

#Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
sudo apt-get update

# Install PHP
sudo apt-get install -y php7.3

# PHP Apache Mod
sudo apt-get install -y libapache2-mod-php7.3

# Restart Apache
service apache2 restart

# PHP Mods
sudo sudo apt-get install -y php7.3-common
sudo apt-get install -y php7.3-zip

sudo apt-get install -y php7.0-mcrypt
sudo apt-get upgrade

# Set MySQL Pass
debconf-set-selections <<<'mysql-server mysql-server/root_password password root'
debconf-set-selections <<<'mysql-server mysql-server/root_password_again password root'

# Install MySQL
sudo apt-get install -y mysql-server

# PHP-MYSQL lib
sudo apt-get install -y php7.3-mysql

# Restart Apache
sudo service apache2 restart
