# docker-wget-slim - a slim Docker container for wget

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-wget-slim/

# ABOUT

docker-wget-slim is a container for downloading URLs with wget, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [progrium/busybox](https://registry.hub.docker.com/u/progrium/busybox/).

# EXAMPLES

```
$ make
docker build -t mcandre/docker-wget-slim .
docker run --rm mcandre/docker-wget-slim -O- http://icanhazip.com
40.50.60.70
docker run --rm mcandre/docker-wget-slim -O- http://ron-swanson-quotes.herokuapp.com/quotes && echo ""
{"quote":"Give a man a fish and feed him for a day. Don't teach a man to fish and feed yourself. He's a grown man. And fishing's not that hard."}
```

## Mirroring websites

```
docker run --rm -v $(pwd)/mirrors:/mnt mcandre/docker-wget-slim -P /mnt -mpNHk -D www.gnu.org -np http://www.gnu.org/software/wget/manual/
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
