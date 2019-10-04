#!/bin/bash
BASEDIR=$(dirname $0)
export LD_LIBRARY_PATH=${BASEDIR}
cd ${BASEDIR}

if [ -z "$1" ]

then
    BRANCH=beta
else
    BRANCH="$1"
fi

wget "https://cdn.altv.mp/server/$BRANCH/x64_linux/altv-server" -O ./altv-server
wget "https://cdn.altv.mp/node-module/$BRANCH/x64_linux/libnode.so.72" -O ./libnode.so.72
wget "https://cdn.altv.mp/node-module/$BRANCH/x64_linux/modules/libnode-module.so" -O ./modules/libnode-module.so
wget "https://cdn.altv.mp/server/$BRANCH/x64_linux/data/vehmodels.bin" -O ./data/vehmodels.bin
wget "https://cdn.altv.mp/server/$BRANCH/x64_linux/data/vehmods.bin" -O ./data/vehmods.bin

./altv-server --config "config/server.cfg" --logfile "logs/server.log
