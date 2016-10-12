#!/bin/bash

sudo service <%= appName %> stop
cd <%= appRemoteTargetPath %>

# unpack bundle / overwrite previous
tar -zxvf <%= appName %>.tar.gz
rm -rf <%= appName %>.tar.gz
