#!/usr/bin/env bash

curl --url 127.0.0.1:3000/qv?q=${1:a2z} -Ss
echo
