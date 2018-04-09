#!/bin/bash

NODE_INSTALLER="$1"

if [[ "$NODE_INSTALLER" = "yarn" ]]; then npm i -g yarn; fi

cd /code

DEBUG=electron-installer-snap:snapcraft CI=true npm run test -- --installer=$NODE_INSTALLER
