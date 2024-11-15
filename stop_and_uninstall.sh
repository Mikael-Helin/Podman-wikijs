#!/usr/bin/env bash

podman rm -f amoracle-wiki
podman rmi ghcr.io/requarks/wiki:2

echo "Wiki stopped and uninstalled."
echo "DATA directory is still present. Remove it manually if you want to delete the data."