#! /bin/bash

# Change this to the absolute path to the working directory on the host
WORKING_DIR=/path/to/working/directory

# Change this to the name of the container that you have based on carissima/corrade
CONTAINER=YOUR_CONTAINER_NAME_HERE

sudo docker run -d --rm -v ${WORKING_DIR}/Cache\:/corrade/Cache \
    -v ${WORKING_DIR}/Databases\:/corrade/Databases \
    -v ${WORKING_DIR}/State\:/corrade/State \
    -v ${WORKING_DIR}/Logs\:/corrade/Logs \
    --name corrade ${CONTAINER} /usr/bin/mono-service -l\:Corrade.exe.lock --no-daemon Corrade.exe
