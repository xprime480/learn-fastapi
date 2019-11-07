#!/usr/bin/env bash

ITEM=${1:-239}
curl --url 127.0.0.1:3000/items/${ITEM} -o logs/item-${ITEM}.txt -Ss
