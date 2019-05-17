all: download process upload clean

download:
	@echo Downloading...
	mkdir -p src
	cd src && wget -i ../filelist.txt -c

process:
	@echo Processing...
	mkdir -p tmp dist
	gdal_translate -co TILED=YES -co COMPRESS=DEFLATE -co PREDICTOR=2 /vsizip/src/Globcover2009_V2.3_Global_.zip/GLOBCOVER_L4_200901_200912_V2.3.tif dist/globcover.tif

upload:
	@echo Uploading...
	aws s3 sync --storage-class STANDARD_IA ./dist s3://geofolio-raster-baselayers/globcover/

clean:
	@echo Cleaning up...
	rm -rf src
	rm -rf tmp
	rm -rf dist
