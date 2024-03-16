#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

cd $SCRIPT_DIR/..

docker build -f ./Dockerfile -t my-app .
