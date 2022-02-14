#!/bin/bash
# Bash instead of sh because source exists only in bash

docker-compose down
./scripts/decode.sh
chmod 755 ./open-store.sh
./open-store.sh
source ./open-store.sh
docker-compose -f docker-compose.yml up -d
