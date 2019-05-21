VERSION=v1

all: process sync clean

init:
	mkdir -p src tmp dist

process: texture_0cm.tif siltfrac_0cm.tif sandfrac_0cm.tif clayfrac_0cm.tif ph.tif organic-carbon.tif bulk-density.tif

texture_0cm.tif: init
	cd src && wget -O texture_0cm.tif -c https://zenodo.org/record/2525817/files/sol_texture.class_usda.tt_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/texture_0cm.tif dist/texture_0cm.tif

siltfrac_0cm.tif: init
	cd src && wget -O siltfrac_0cm.tif -c https://zenodo.org/record/2525676/files/sol_silt.wfraction_usda.3a1a1a_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/siltfrac_0cm.tif dist/siltfrac_0cm.tif

sandfrac_0cm.tif: init
	cd src && wget -O sandfrac_0cm.tif -c https://zenodo.org/record/2525662/files/sol_sand.wfraction_usda.3a1a1a_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/sandfrac_0cm.tif dist/sandfrac_0cm.tif

clayfrac_0cm.tif: init
	cd src && wget -O clayfrac_0cm.tif -c https://zenodo.org/record/2525662/files/sol_sand.wfraction_usda.3a1a1a_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/clayfrac_0cm.tif dist/clayfrac_0cm.tif

ph.tif: init
	cd src && wget -O ph.tif -c https://zenodo.org/record/2525664/files/sol_ph.h2o_usda.4c1a2a_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/ph.tif dist/ph.tif

organic-carbon.tif: init
	cd src && wget -O organic-carbon.tif -c https://zenodo.org/record/2536040/files/sol_organic.carbon.stock_msa.kgm2_m_250m_b0..10cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/organic-carbon.tif dist/organic-carbon.tif

bulk-density.tif: init
	cd src && wget -O bulk-density.tif -c https://zenodo.org/record/2525665/files/sol_bulkdens.fineearth_usda.4a1h_m_250m_b0..0cm_1950..2017_v0.2.tif?download=1
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=2 src/bulk-density.tif dist/bulk-density.tif

sync:
	aws s3 sync --storage-class STANDARD_IA ./dist s3://geofolio-raster-baselayers/soilgrids/${VERSION}/

clean:
	rm -rf src tmp dist
