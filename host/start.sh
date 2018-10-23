#! /bin/bash

# Change this to the absolute path to the working directory on the host
WORKING_DIR=/path/to/working/directory

# Change this to the name of the container that you have based on carissima/corrade
CONTAINER=YOUR_CONTAINER_NAME_HERE

sudo docker run -d --rm -v ${WORKING_DIR}/Cache\:/corrade/Cache -v ${WORKING_DIR}/Databases\:/corrade/Databases\
-v ${WORKING_DIR}/State\:/corrade/State -v ${WORKING_DIR}/Logs\:/corrade/Logs \
-P -p 53\:53 -p 80\:80 -p 443\:443 -p 12043\:12043 -p 12046\:12046 -p 21002\:21002 \
-p 53\:53/udp -p 3478\:3478/udp -p 3479\:3479/udp -p 5060\:5060/udp -p 5062\:5062/udp \
--name corrade ${CONTAINER} /usr/bin/mono-service -l\:Corrade.exe.lock --no-daemon Corrade.exe
