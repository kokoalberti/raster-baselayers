DATASET=globcover
VERSION=v1

all: process

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
	test $(BUCKET)
	@echo Syncing to s3://${BUCKET}/${DATASET}/${VERSION}/
	aws s3 mb s3://${BUCKET}/ || true
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	@echo Cleaning up...
	rm -rf src tmp dist
