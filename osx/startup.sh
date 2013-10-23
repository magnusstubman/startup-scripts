#!/bin/bash

export PATH=$PATH:/usr/local/bin

perspective_root_folder=<specify the location of perspective root folder>

echo "Starting rethinkdb"
cd $perspective_root_folder
rethinkdb --port-offset 1 &

echo "Starting perspective-api"
cd $perspective_root_folder/perspective-api
mkdir -p logs
./bin/perspective-api.js &

echo "Starting perspective-client"
cd $perspective_root_folder/perspective-client
./server.js
echo "Done!"
