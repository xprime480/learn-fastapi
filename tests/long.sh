#!/usr/bin/env bash

WHAT=${1:-/usr/local/bin}
curl --url 127.0.0.1:3000/long/${WHAT} -Ss
echo
