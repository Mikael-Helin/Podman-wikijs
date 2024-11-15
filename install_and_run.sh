#!/usr/bin/env bash

mkdir DATA
chmod 777 DATA

podman run -d -p 8334:3000 --name amoracle-wiki \
    --restart unless-stopped \
    -e "DB_TYPE=sqlite" \
    -e "DB_FILEPATH=/opt/wiki.db" \
    -v $(pwd)/DATA:/opt \
    ghcr.io/requarks/wiki:2
