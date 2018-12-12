#! /bin/bash

#    Copyright 2018, Carissima Resident @ Second Life

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

# Change this to the absolute path to the working directory on the host
WORKING_DIR=/path/to/working/directory

# Change this to the name of the container that you have based on carissima/corrade
CONTAINER=YOUR_CONTAINER_NAME_HERE

sudo docker run -d --rm -v ${WORKING_DIR}/Cache\:/corrade/Cache \
    -v ${WORKING_DIR}/Databases\:/corrade/Databases \
    -v ${WORKING_DIR}/State\:/corrade/State \
    -v ${WORKING_DIR}/Logs\:/corrade/Logs \
    --name corrade ${CONTAINER} /usr/bin/mono-service -l\:Corrade.exe.lock --no-daemon Corrade.exe
