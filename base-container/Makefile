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

VERSION=10.1.6888.26209

all: build

build:
	# Build the base image without the configuration
	docker build --build-arg CORRADE_VERSION=${VERSION} \
		-t carissima/corrade\:latest \
		-t carissima/corrade\:release \
		-t carissima/corrade:\10.1 \
		-t carissima/corrade\:${VERSION} .

push:
	# Push to the public repo
	docker push carissima/corrade\:${VERSION}
	docker push carissima/corrade\:10.1
	docker push carissima/corrade\:release
	docker push carissima/corrade\:latest

notice:
	echo "@notice ([Corrade 10 Release Docker Container]) (The Corrade 10 [Release Branch] ${VERSION} Docker container is now available! Get 'er while she's hot! https://hub.docker.com/r/carissima/corrade)" > notice.release.${VERSION}.txt
