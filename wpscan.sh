#!/bin/bash

url=$1
out=$(echo $1 | sed 's/https:\/\///;s|\/.*||')

docker run -it --rm wpscanteam/wpscan -u $url | tee -a wpscan.$out.txt
