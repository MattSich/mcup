#!/bin/bash

# install nginx
sudo mkdir -p /etc/nginx
sudo chmod -R 777 /etc/nginx
sudo yum install -y nginx
sudo mkdir /etc/nginx/sites-enabled

sudo iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 3000 -j ACCEPT
sudo service iptables save

# allow nginx to connect to localhost:3000
sudo setsebool httpd_can_network_connect true -P

# nginx daemon
sudo chkconfig --level 3 nginx on
sudo service nginx start
