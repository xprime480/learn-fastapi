#!/usr/bin/env bash

curl --url 127.0.0.1:3000/body/123 \
    -Ss \
    -X PUT \
    -H "Content-Type: application/json"  \
    --data '42'
echo

curl --url 127.0.0.1:3000/body/666 \
    -Ss \
    -X PUT \
    -H "Content-Type: application/json"  \
    --data '45'
echo
