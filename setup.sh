#!/bin/bash

# install password generator
#apt-get install -y pwgen

# generate a password for the MySQL server
#PASSWORD=`pwgen 10 1`
#PASSWORD='docker'
#echo "MySQL Password: $PASSWORD"

# set mysql password when prompted
#debconf-set-selections <<< "mysql-server mysql-server/root_password password $PASSWORD"
#debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $PASSWORD"
#apt-get install -y mysql-server mysql-client

# install testing tools
apt-get install -y git php7.0-mysql npm nodejs
npm install -g csslint
npm install -g jslint
ln -s "$(which nodejs)" /usr/bin/node

# install php composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
