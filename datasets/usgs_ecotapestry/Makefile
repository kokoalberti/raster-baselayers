DATASET=usgs_ecotapestry
VERSION=v1

all: process

init:
	mkdir -p src tmp dist

process: lithology.tif landform.tif

lithology.tif: init
	cd src && wget -O lithology.tif -c https://zenodo.org/record/1464846/files/dtm_lithology_usgs.ecotapestry_c_250m_s0..0cm_2014_v1.0.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/lithology.tif dist/lithology.tif

landform.tif: init
	cd src && wget -O landform.tif -c https://zenodo.org/record/1464846/files/dtm_landform_usgs.ecotapestry_c_250m_s0..0cm_2014_v1.0.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/landform.tif dist/landform.tif

world_elu_2015.tif: init
	cd src && wget -O world_elu_2015.zip -c https://rmgsc.cr.usgs.gov/outgoing/ecosystems/Global/World_ELU_2015.zip
	gdal_translate /vsizip/src/world_elu_2015.zip/globalelu/World_ELU_2015.tif dist/world_elu_2015.tif -co TILED=YES -co COMPRESS=LZW

world_ecological_2015.tif: init
	#cd src && wget -O world_ecological_2015.zip -c https://rmgsc.cr.usgs.gov/outgoing/ecosystems/Global/World_Ecological_2015.zip
	gdal_translate /vsizip/src/world_ecological_2015.zip/globalelus_query/World_Ecological_2015.tif dist/world_ecological_2015.tif -co TILED=YES -co COMPRESS=LZW -co BIGTIFF=YES

sync:
	test $(BUCKET)
	@echo Syncing to s3://${BUCKET}/${DATASET}/${VERSION}/
	aws s3 mb s3://${BUCKET}/ || true
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	rm -rf src tmp dist
