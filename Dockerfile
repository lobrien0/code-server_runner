#!Dockerfile

# Based on LinuxServer Code Server image
FROM lscr.io/linuxserver/code-server:latest

USER root

# Updates, upgrades and then installs primary code-running dependencies
RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    python3 python3-dev python3-pip \
    gcc g++ build-essential \
    openjdk-17-jdk openjdk-17-jre \
    nodejs npm

# Installs dependencies to compilie and run C#
RUN apt-get update && \
	apt-get install -y \
	dirmngr gnupg apt-transport-https \
	ca-certificates software-properties-common
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
	apt-add-repository -y 'deb https://download.mono-project.com/repo/ubuntu stable-focal main' && \
	apt-get install -y mono-complete

# Creates data-directories for custom files and extensions
RUN mkdir -p /config/data/User && \
	mkdir -p /config/extensions

# Uploads custom files and extensions from relitive config file
COPY ./config/ /config/
