#!/usr/bin/env bash

curl --url 127.0.0.1:3000/qvsd -Ss
echo
curl --url 127.0.0.1:3000/qvsd?q=cat -Ss
echo
curl --url "127.0.0.1:3000/qvsd?q=cat&q=dog" -Ss
echo
