#!/usr/bin/env bash

curl --url 127.0.0.1:3000/embed/123 \
    -Ss \
    -X PUT \
    -H "Content-Type: application/json"  \
    --data '{"answer": 42}'
echo

curl --url 127.0.0.1:3000/embed/666 \
    -Ss \
    -X PUT \
    -H "Content-Type: application/json"  \
    --data '{"answer": 45}'
echo
