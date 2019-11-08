#!/usr/bin/env bash

curl --url 127.0.0.1:3000/qvs -Ss
echo
curl --url 127.0.0.1:3000/qvs?q=cat -Ss
echo
curl --url "127.0.0.1:3000/qvs?q=cat&q=dog" -Ss
echo
