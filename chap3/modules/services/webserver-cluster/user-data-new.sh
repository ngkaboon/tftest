#!/bin/bash

echo "Hello, EastWord" > index.html
nohup busybox httpd -f -p "${server_port}" &
