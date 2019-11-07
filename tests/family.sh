#!/usr/bin/env bash

WHO=${1:-Connor}
curl --url 127.0.0.1:3000/family/${WHO} -Ss
echo
