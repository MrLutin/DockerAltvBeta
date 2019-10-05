#!/bin/bash
BASEDIR=$(dirname $0)
export LD_LIBRARY_PATH=${BASEDIR}
cd ${BASEDIR}

wget --no-cache "https://cdn.altv.mp/server/beta/x64_linux/altv-server" -O ./altv-server
wget --no-cache "https://cdn.altv.mp/node-module/beta/x64_linux/libnode.so.72" -O ./libnode.so.72
wget --no-cache "https://cdn.altv.mp/node-module/beta/x64_linux/modules/libnode-module.so" -O ./modules/libnode-module.so
wget --no-cache "https://cdn.altv.mp/server/beta/x64_linux/data/vehmodels.bin" -O ./data/vehmodels.bin
wget --no-cache "https://cdn.altv.mp/server/beta/x64_linux/data/vehmods.bin" -O ./data/vehmods.bin

chmod +x ./altv-server && ./altv-server --config "config/server.cfg" --logfile "logs/server.log
