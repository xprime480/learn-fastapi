#!/usr/bin/env bash

curl --url 127.0.0.1:3000 -o logs/root.txt -Ss
test $? && echo "success" || echo "failure $?"
