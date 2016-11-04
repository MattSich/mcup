#!/bin/bash

# install npm dependencies
cd <%= appRemoteTargetPath %>/bundle/programs/server/
sudo chmod -R 777 .
tar -zxvf node_modules.tar.gz
rm -rf node_modules.tar.gz

cd node_modules
npm build fibers

export ROOT_URL=<%= appRootUrl %>
export PORT=<%= appPort %>
export NODE_ENV=production
export MONGO_URL=<%= appMongoUrl %>
export METEOR_SETTINGS=<%- appEnv %>

/usr/lib/node_modules/forever/bin/forever stopall
/usr/lib/node_modules/forever/bin/forever start --spinSleepTime 5000 --minUptime 5000  /var/www/syncaa/bundle/main.js
