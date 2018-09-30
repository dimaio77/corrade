# corrade

This is the source for a Docker container (and its accoutrements) for running the C10 beta Corrade bot in Second Life.

If you have no idea what that is, please have a look at the [Wizardry & Steamworks](http://www.grimore.org/).

## base-container folder

The container folder had everything in it for creating the [`carissima/corrade`](https://hub.docker.com/r/carissima/corrade/) Docker container. You don't really need to worry about that too much, unless you want to bend it to your own whim.

## custom-container folder

This folder contains a simple `Dockerfile` for installing your own `Configuration.xml` in a personalised container. Make sure that you create your `Configuration.xml` file per the directions for C10. I used the built-in [Nucleus server](http://localhost:54377/) to create mine. Until there's a C10 version of the Corrade `Confiurator.exe`, this may be what you have to do as well.

## host folder

This is the interesting bit. Everything in the `host` folder should be placed in the working directory of your host VM or machine to run your personalised version of the `carissima/corrade` container. Put it all on the host, along with `make`, if you want to use the `Makefile`. Otherwise the commands in the `Makefile` can be made into shell scripts of their own.

**Please note** that if you are running Docker on a `Windoze` machine, I have no idea how the stuff in the above paragraph works. Maybe you could run a `Linux` VM in [`VirtualBox`](http://virtualbox.org/) or something.

The `make start` command contains everything you need to run your bot succesfully, including all of the directories you need and the ports that need to be open to work with the SL grid. I found information about the ports [here](https://community.secondlife.com/knowledgebase/english/using-second-life-with-a-firewall-r599/).

## Running on Google Cloud

I am running my Corrade on Google Cloud. It runs just fine in the base `f1-micro` container with a 10 GB disk, so it's free forever to run one Corrade. I will probably charge for my Corrade deployment configuration, but I don't know if I can be arsed to create a GCP Deployment Manager configuration for it.

## Be vigilant!

Have fun with this. I'll be very happy to hear from you, if you find it useful.
