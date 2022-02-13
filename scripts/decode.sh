#!/usr/bin/env bash

openssl enc -aes-256-cbc -d -iter 1000 -in ${PWD}/private-store.pem -out ${PWD}/open-store.txt