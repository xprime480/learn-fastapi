#!/usr/bin/env bash

PYTHONPATH=$PYTHONPATH:/data/learn-fastapi/lib \
     uvicorn main:app --reload --port 3000 >/data/learn-fastapi/logs/server.log 2>&1 &
