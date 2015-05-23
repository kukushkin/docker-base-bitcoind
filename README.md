# Latest bitcoind and phusion/baseimage

This is a [Docker](http://www.docker.io) image based on
[phusion/baseimage](https://github.com/phusion/baseimage-docker) with latest `bitcoind`
installed from [PPA bitcoin repository](https://launchpad.net/~bitcoin/+archive/bitcoin).

Currently contains:

* phusion/baseimage:0.9.16 (Docker-friendly minimal Ubuntu 14.04)
* bitcoind (v0.10.1.0-gd8ac901)

## How to use

The image is available in the [Docker registry](https://index.docker.io/u/kukushkin/base-bitcoind/).
```
docker pull kukushkin/base-bitcoind
```

### Inspecting the image

This will run an interactive shell (/bin/bash) within the container:
```
docker run -t -i kukushkin/base-bitcoind
```

### Use as a base image
```
# Dockerfile

FROM kukushkin/base-bitcoind

# configure bitcoind to run on container start, add bitcoind.conf etc
RUN ...

# set entry point, exposed ports etc.
EXPOSE ...
ENTRYPOINT [...]
CMD [...]
```

## How to rebuild this image with latest bitcoind
```
mkdir my-bitcoin-image
cd my-bitcoin-image/
git clone https://github.com/kukushkin/docker-base-bitcoind .
docker build -t my-bitcoin-image .
```
