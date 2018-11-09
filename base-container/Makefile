VERSION=10.1.6887.19973

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
