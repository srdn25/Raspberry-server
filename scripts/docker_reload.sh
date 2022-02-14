#!/bin/sh

docker-compose down
./scripts/decode.sh
./open-store.sh
docker-compose -f docker-compose.yml up -d