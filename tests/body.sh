#!/usr/bin/env bash


curl --url 127.0.0.1:3000/body/123 \
    -Ss \
    -X PUT \
    -H "Content-Type: application/json"  \
    --data '{"car": {"make":"Honda","model":"CR-V","year":2017,"mileage":50000}, "answer":42}'
echo
