#!/bin/bash

# package meteor
cd $APP_LOCAL_PATH

meteor build bundle --architecture os.linux.x86_64
cd bundle/
for file in *.tar.gz; do tar -zxf $file; done
cd bundle/programs/server/
npm install fibers@1.0.8 --save
npm install
tar -zcvf ../../../node_modules.tar.gz node_modules
cd ../../../
rm -rf bundle
