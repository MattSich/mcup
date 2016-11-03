#!/bin/bash

/usr/lib/node_modules/forever/bin/forever stopall
cd <%= appRemoteTargetPath %>

# unpack bundle / overwrite previous
tar -zxvf <%= appName %>.tar.gz
rm -rf <%= appName %>.tar.gz
