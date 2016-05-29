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

# install dependencies tools
apt-get install -yqq git php7.0-mysql npm nodejs

# install css and js testings tools
npm install -g csslint
npm install -g jslint
ln -s "$(which nodejs)" /usr/bin/node

# install html5-tidy
curl http://binaries.html-tidy.org/binaries/tidy-5.2.0/tidy-5.2.0-64bit.deb -o tidy.deb
dpkg -i tidy.deb
rm tidy.deb

# install php composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
