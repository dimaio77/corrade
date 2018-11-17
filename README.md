# Using the Corrade Docker container

**Please note:** This repository is a mirror of https://bitbucket.org/carissima/corrade.git

I created this for myself, and I soon realised that other people would be interested in using it for themselves. I hope to make that a little easier by writing this.

Please note that these instructions only apply to running Corrade using the [carissima/corrade](https://hub.docker.com/r/carissima/corrade) Docker container. If you want to run Corrade directly on your host machine, then these instructions are not for you.

If you run into any snags, because I've not explained something properly, please feel free to send a pull request or just let me know.

## Before you can run the container

There are a few prerequisites that you will need to do on the machine that will run the container (hereafter called "the host machine"). I run a virtual machine as my host, but you can also run it directly on your computer.

### 1. Install Docker CE

The installation instructions for most operating environments are at https://docs.docker.com/install/.

### 2. Create your working directory

This might be your home directory, but it can be anyplace you have full permissions.

Copy the **contents** of the "host" folder in this repo to your home directory. 
- The directories are be mapped by the container, so their contents persist.
- You'll use the scripts to start and stop the container.

### 3. Create your Corrade configuration

In order to create the configuration file, you can run the vanilla container [carissima/corrade](https://hub.docker.com/r/carissima/corrade/) to perform the intial configuration:

```shell
# Run Corrade, just exposing port 53477
$ sudo docker run -d --rm -p 54377:54377 carissima/corrade \
/usr/bin/mono-service -l\:Corrade.exe.lock --no-daemon Corrade.exe

# Use your web browser to do your configuration stuff on port 54377

# Copy the Configuration.xml file to the current directory
$ sudo docker cp corrade:/corrade/Configuration.xml .

# Stop the container, which also removes it
$ sudo docker stop corrade
```

### 4. Create your custom container

In order to run Corrade, you have to add your personal Configuration.xml to the `custom-container` folder and build it. See "Create your Corrade configuration" for more details.

Since you have Docker installed on your host machine, you can build the container, optionally pushing it to a Docker container repo of your own.

Edit `build.sh`, replacing `YOUR_CONTAINER_NAME_HERE` with the name of your container.

```shell
#! /bin/bash

CONTAINER=YOUR_CONTAINER_NAME_HERE

# Build the one with your own configuration
docker build -t ${CONTAINER}\:latest .

# To push to your own private repo, uncomment the following line
# docker push ${CONTAINER}\:latest
```

Then build (and push) your container

```shell
$ ./build.sh
```

**CAUTION**: It is dangerous to push your personal Docker container to a public Docker repo. If you do that, your bot can be hijacked!

## Run your Corrade in its container!

As long as you have copied the contents of the "host" directory to your home directory and created your own container, you should be able to:

**Start Corrade**

```shell
$ ./start.sh
```

**Stop Corrade**

```shell
$ ./stop.sh
```
## Contact

This is my hobby. That being said, I am happy to help, if you have issues with the Docker container. If you want to learn about Docker, feel free to go to [docker.io](https://docker.io). If you want to learn about Corrade, plese got to the [Wizardry and Steamworks website](http://grimore.org).

You may contact Carissima Resident in-world on SL.
