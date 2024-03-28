#!/bin/bash

docker run -p 3000:3000 -e API_SERVER=https://httpbin.org -e API_PATH=/anything my-app
