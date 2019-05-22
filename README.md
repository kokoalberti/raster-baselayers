# raster-baselayers

Set of Makefiles to download, optimize, and upload a selection of public
raster datasets to AWS S3. 

* [globcover](datasets/globcover/)
* [worldclim](datasets/worldclim/)
* [soilgrids](datasets/soilgrids/)
* [usgs_ecotapestry](datasets/usgs_ecotapestry)
* [jaxa_alos_world_30m](datasets/jaxa_alos_world_30m)

A couple of things need to be installed for all of the Makefiles to work. On 
Ubuntu:

    # GIS utilities from ubuntugis-unstable
    sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && \
    apt-get update -y && \
    apt-get install -y gdal-bin python3-gdal python3-shapely

    # Other handy stuff
    sudo apt-get install -y wget cmake zip unzip python3-dev python3-numpy \
    python3-pip

    # Some Python packages via PyPI
    pip3 install NetCDF4 psycopg2-binary python-dotenv awscli

And a quick init script to mount instance storage on an AWS processing machine:

    #!/bin/bash
    sudo mkfs.ext4 -F /dev/nvme0n1 && sudo mount /dev/nvme0n1 /data -t ext4 && sudo chown ubuntu:ubuntu /data
    cd /data && git clone git@github.com:kokoalberti/raster-baselayers.git

