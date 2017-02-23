#!/bin/bash
set -e
NODE_VERSION=4.7.3
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm
npm install --global npm@3
npm install --global node-gyp node-pre-gyp
ln -sf /opt/nodejs/bin/node-gyp /usr/bin/node-gyp
ln -sf /opt/nodejs/bin/node-pre-gyp /usr/bin/node-pre-gyp
