#!/usr/bin/env bash

openssl enc -aes-256-cbc -e -iter 1000 -salt -in ${PWD}/open-store.txt -out ${PWD}/private-store.pem
