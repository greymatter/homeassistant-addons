#!/bin/sh
ISY994_HOST=$ISY_HOST
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "Starting"

if [ -z "${ISY994_HOST}" ]; then
    echo "${RED}Please set a proper isy994 host with ISY994_HOST${NC}"
    sleep 2
    exit 1
fi

echo "Environment ok"

cd /app

if [ ! -f app/admin.jnlp ]; then
    echo "Downloading admin.jnlp"

    wget -O admin.jnlp http://${ISY994_HOST}/admin.jnlp

    if [ ! $? -eq 0 ]; then
        echo "${RED}Failed to download admin.jnlp, please check your settings${NC}"
        sleep 2
        exit 2
    fi
fi

echo "${GREEN}Initialization complete, starting virtual console${NC}"
itweb-settings -set deployment.manifest.attributes.check NONE

exec javaws /app/admin.jnlp
