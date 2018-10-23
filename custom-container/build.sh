#! /bin/bash

CONTAINER=YOUR_CONTAINER_NAME_HERE

# Build the one with your own configuration
docker build -t ${CONTAINER}\:latest .

# To push to your own private repo, uncomment the following line
# docker push ${CONTAINER}\:latest
