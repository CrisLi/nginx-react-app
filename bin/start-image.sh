#!/bin/bash

docker run -p 3000:3000 -e API_URL=https://httpbin.org/anything/ my-app
