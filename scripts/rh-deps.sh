#!/bin/bash

# install npm dependencies
cd <%= appRemoteTargetPath %>/bundle/programs/server/
sudo tar -zxvf node_modules.tar.gz
rm -rf node_modules.tar.gz

export ROOT_URL=<%= appRootUrl %>
export PORT=<%= appPort %>
export NODE_ENV=production
export MONGO_URL=<%= appMongoUrl %>
export METEOR_SETTINGS=<%- appEnv %>

/usr/lib/node_modules/forever/bin/forever stopall
/usr/lib/node_modules/forever/bin/forever start --spinSleepTime 5000 --minUptime 5000  /var/www/syncaa/bundle/main.js
