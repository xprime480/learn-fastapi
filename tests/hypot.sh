#!/usr/bin/env bash

X=${1:-1.0}
Y=${2:-1.0}
curl --url "127.0.0.1:3000/hypotenuse/?x=${X}&y=${Y}" -Ss
echo
