#!/bin/bash

PORT=5000

cd area

if [ ! -e shutdown.txt ]; then
    echo "Starting DragonBall Saga MUD on port $PORT..."
    ../src/dbsaga $PORT
else
    echo "Server is in shutdown mode. Remove area/shutdown.txt to start."
fi
