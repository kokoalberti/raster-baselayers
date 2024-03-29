# raster-baselayers

Collection of Makefiles to download and convert a public raster datasets to optimized GeoTIFF files. Currently available:

* [globcover](datasets/globcover/)
* [worldclim](datasets/worldclim/)
* [soilgrids](datasets/soilgrids/)
* [usgs_ecotapestry](datasets/usgs_ecotapestry/)
* [jaxa_alos_world_30m](datasets/jaxa_alos_world_30m/)
* [gleam](datasets/gleam/)
* [hydrosheds](datasets/hydrosheds/)
* [esa_cci_landcover](datasets/esa_cci_landcover/)
* [measures_global_cropland](datasets/measures_global_cropland/)

These are mostly for personal use, so the files and repo are not very polished at the moment. Use at your own risk, I'm making it public just in case it's useful for anyone.

See also PostGIS Baselayers, a sister project for vector data at [https://github.com/kokoalberti/postgis-baselayers](https://github.com/kokoalberti/postgis-baselayers).

## Usage

Run `make` in a dataset directory to download and create an optimized version of the dataset:

    $ cd datasets/usgs_ecotapesty && make
    (...)
    $

The optimized GTiff files are created in the `dist` subdirectory:

    $ ls -sh datasets/usgs_ecotapestry/dist
    655M landform.tif  238M lithology.tif
    $

The files can be used as it, or to sync to an S3 bucket use `make sync BUCKET=<bucketname>`:

    $ cd datasets/usgs_ecotapestry && make sync BUCKET=testbucket82167
    (...)
    upload: dist/lithology.tif to s3://testbucket82167/usgs_ecotapestry/v1/lithology.tif
    upload: dist/landform.tif to s3://testbucket82167/usgs_ecotapestry/v1/landform.tif
    $

After which they should be synced to an S3 bucket:

    $ aws s3 ls s3://testbucket82167/usgs_ecotapestry/v1/
    2019-06-03 12:44:39  685989402 landform.tif
    2019-06-03 12:42:21  248511506 lithology.tif
    $

Where you can access them from anywhere using GDAL's virtual filesystems:

    $ gdalinfo /vsis3/testbucket82167/usgs_ecotapestry/v1/landform.tif
    Driver: GTiff/GeoTIFF
    Files: /vsis3/testbucket82167/usgs_ecotapestry/v1/landform.tif
    Size is 172800, 71698
    (...)
    $

## Notes

### Prerequisites

A couple of things need to be installed for all of the Makefiles to work. On 
Ubuntu:

    # GIS utilities from ubuntugis-unstable
    sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && \
    sudo apt-get update -y && \
    sudo apt-get install -y gdal-bin python3-gdal python3-shapely

    # Other handy stuff
    sudo apt-get install -y wget cmake zip unzip python3-dev python3-numpy \
    python3-pip sshpass awscli p7zip-full

    # Some Python packages via PyPI
    pip3 install NetCDF4 psycopg2-binary python-dotenv

    # Configure aws credentials for easy s3 syncing
    aws configure

### Using a temporary EC2 instance to do processing

It's usually faster to do this type of processing (especially syncing to S3) on a temporary EC2 instance. 

Shell script to mount instance storage on an AWS processing machine:

    #!/bin/bash
    sudo mkfs.ext4 -F /dev/nvme0n1 && sudo mkdir /data && sudo mount /dev/nvme0n1 /data -t ext4 && sudo chown ubuntu:ubuntu /data
    cd /data && git clone git@github.com:kokoalberti/raster-baselayers.git

