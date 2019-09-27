DATASET=measures_global_croplands
VERSION=v1

all: process

init:
	mkdir -p src tmp dist

process: cropland_dominance.tif

cropland_dominance.tif: init
	cd src && wget -O cropland_dominance.tif --http-user=${EARTHDATA_USERNAME} --http-password=${EARTHDATA_PASSWORD} -c https://e4ftl01.cr.usgs.gov/MEASURES/GFSAD1KCD.001/2007.01.01/GFSAD1KCD.2010.001.2016348142525.tif
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 src/cropland_dominance.tif dist/cropland_dominance.tif

cropland_extent.tif: init
	cd src && wget --http-user=${EARTHDATA_USERNAME} --http-password=${EARTHDATA_PASSWORD} https://e4ftl01.cr.usgs.gov/MEASURES/GFSAD30NACE.001/2008.01.01/GFSAD30NACE_2010_N40W90_001_2017274094200.tif

sync:
	test $(BUCKET)
	@echo Syncing to s3://${BUCKET}/${DATASET}/${VERSION}/
	aws s3 mb s3://${BUCKET}/ || true
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	rm -rf src tmp dist
