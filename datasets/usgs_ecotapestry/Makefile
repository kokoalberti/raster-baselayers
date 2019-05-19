VERSION=v1

all: process sync clean

init:
	mkdir -p src tmp dist

process: lithology.tif landform.tif

lithology.tif: init
	cd src && wget -O lithology.tif -c https://zenodo.org/record/1464846/files/dtm_lithology_usgs.ecotapestry_c_250m_s0..0cm_2014_v1.0.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/lithology.tif dist/lithology.tif

landform.tif: init
	cd src && wget -O landform.tif -c https://zenodo.org/record/1464846/files/dtm_landform_usgs.ecotapestry_c_250m_s0..0cm_2014_v1.0.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/landform.tif dist/landform.tif

sync:
	aws s3 sync --storage-class STANDARD_IA ./dist s3://geofolio-raster-baselayers/usgs_ecotapestry/${VERSION}/

clean:
	rm -rf src tmp dist
