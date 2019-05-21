VERSION=v1

all: process sync clean

init:
	mkdir -p src tmp dist

process: globcover.tif
	@echo Processing...

globcover.tif: init
	cd src && wget -c http://due.esrin.esa.int/files/Globcover2009_V2.3_Global_.zip
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 \
		/vsizip/src/Globcover2009_V2.3_Global_.zip/GLOBCOVER_L4_200901_200912_V2.3.tif \
		dist/globcover.tif

sync:
	@echo Syncing to S3...
	aws s3 sync --storage-class STANDARD_IA ./dist s3://geofolio-raster-baselayers/globcover/${VERSION}/

clean:
	@echo Cleaning up...
	rm -rf src
	rm -rf tmp
	rm -rf dist
