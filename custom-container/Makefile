VERSION=VERSION_OF_CORRADE_GOES_HERE
CONTAINER=YOUR_CONTAINER_NAME_HERE

all:
	# Build the one with Lexie's configuration
	docker build -t ${CONTAINER}\:latest -t ${CONTAINER}\:${VERSION}

	# To push to your own private repo, uncomment the following lines
	# docker push ${CONTAINER}\:latest
	# docker push ${CONTAINER}\:${VERSION}
