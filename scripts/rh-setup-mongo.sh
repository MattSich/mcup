#!/bin/bash

# install mongodb & mongodb-server
sudo yum install -y mongodb* --disablerepo=epel
# mongodb daemon
sudo chkconfig --level 3 mongod on
sudo service mongod start
