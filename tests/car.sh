#!/usr/bin/env bash


curl --url 127.0.0.1:3000/car \
    -Ss \
    -X POST \
    -H "Content-Type: application/json"  \
    --data '{"make":"Honda","model":"CR-V","year":2017,"mileage":50000}'
echo
