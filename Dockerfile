FROM ubuntu:18.04
MAINTAINER kokoalberti@fastmail.nl

# Build image based on Ubuntu minimal. Mainly due to easy access to all the 
# goodies in the UbuntuGIS repository, which contains more up-to-date 
# geospatial tools than the Debian or Alpine repos.
#
# Given this setup the image might be a bit heavy, but because the apps needed 
# to crunch and import the datasets can be pretty varied it won't hurt to have
# a container with a good collection of command-line and geospatial tools 
# readily available.

ENV TZ Europe/Amsterdam
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install basic dependencies
RUN apt-get update -y && \
    apt-get install -y tzdata && \
    apt-get install -y \
    wget \
    cmake \
    zip \
    unzip \
    linux-tools-common \
    linux-tools-generic \
    software-properties-common \
    postgresql-client \
    supervisor \
    python3-dev \
    python3-numpy \
    python3-pip

# Install geospatial stack from UbuntuGIS
RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && \
    apt-get update -y && \
    apt-get install -y gdal-bin python3-gdal

# Add the current directory to /app
ADD ./requirements.txt /tmp/requirements.txt

# Install Python requirements
RUN pip3 install -r /tmp/requirements.txt
