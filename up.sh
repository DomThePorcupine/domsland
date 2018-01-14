#! /bin/bash

# Step one find and kill the container currently running
docker stop $(docker ps | grep "domsland" | awk '{print $1;}')
# Rebuild it
docker build -t domsland .
# Finally bring it back up
docker run -d -p 3045:3045 domsland