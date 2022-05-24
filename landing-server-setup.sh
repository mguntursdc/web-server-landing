#!/bin/bash

sudo apt-get update

sudo su
cd
git clone https://github.com/sdcilsy/landing-page

systemctl status nginx | grep -E "*running"

if [ $? -eq 0 ]; then
        echo "NGINX sudah terinstall"
else
        echo "NGINX belum terinstall"
        sudo apt-get install -y nginx
fi

rm /var/www/html/index.nginx-debian.html
sudo mv landing-page/* /var/www/html/

