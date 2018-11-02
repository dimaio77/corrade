VERSION=10.0.6877.27118

all: build

build:
	# Build the base image without the configuration
	docker build --build-arg CORRADE_VERSION=${VERSION} -t carissima/corrade:latest -t carissima/corrade:${VERSION} .

push:
	# Push to the public repo
	docker push carissima/corrade:latest
	docker push carissima/corrade:${VERSION}
