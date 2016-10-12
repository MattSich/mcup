#!/bin/bash

# enable EPEL
sudo yum install -y epel-release --disablerepo=epel
sudo yum update -y --disablerepo=epel
# install compilers for npm
sudo yum install -y gcc-c++ make --disablerepo=epel

# create user
sudo useradd meteor-please
