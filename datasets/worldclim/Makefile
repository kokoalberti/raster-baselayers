VERSION=v1

all: process sync clean

init:
	mkdir -p src tmp dist

process: prec.tif tavg.tif
	@echo Processing...

prec.tif: init
	@echo Creating prec.tif
	cd src && wget -c http://biogeo.ucdavis.edu/data/worldclim/v2.0/tif/base/wc2.0_30s_prec.zip
	gdalbuildvrt tmp/prec.vrt -overwrite -separate \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_01.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_02.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_03.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_04.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_05.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_06.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_07.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_08.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_09.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_10.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_11.tif \
		/vsizip/src/wc2.0_30s_prec.zip/wc2.0_30s_prec_12.tif 
	# Int16 datatype, so use PREDICTOR=2
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1  -co PREDICTOR=2 tmp/prec.vrt dist/prec.tif

tavg.tif: init
	@echo Creating tavg.tif
	cd src && wget -c http://biogeo.ucdavis.edu/data/worldclim/v2.0/tif/base/wc2.0_30s_tavg.zip
	gdalbuildvrt tmp/tavg.vrt -overwrite -separate \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_01.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_02.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_03.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_04.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_05.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_06.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_07.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_08.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_09.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_10.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_11.tif \
		/vsizip/src/wc2.0_30s_tavg.zip/wc2.0_30s_tavg_12.tif 
	# Float32 datatype, so use PREDICTOR=3
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=3 tmp/tavg.vrt dist/tavg.tif

tmin.tif: init
	@echo Creating tmin
	cd src && wget -c http://biogeo.ucdavis.edu/data/worldclim/v2.0/tif/base/wc2.0_30s_tmin.zip
	gdalbuildvrt tmp/tmin.vrt -overwrite -separate \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_01.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_02.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_03.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_04.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_05.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_06.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_07.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_08.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_09.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_10.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_11.tif \
		/vsizip/src/wc2.0_30s_tmin.zip/wc2.0_30s_tmin_12.tif 
	# Float32 datatype, so use PREDICTOR=3
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=3 tmp/tmin.vrt dist/tmin.tif

tmax.tif: init
	@echo Creating tmax.tif
	cd src && wget -c http://biogeo.ucdavis.edu/data/worldclim/v2.0/tif/base/wc2.0_30s_tmax.zip
	gdalbuildvrt tmp/tmax.vrt -overwrite -separate \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_01.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_02.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_03.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_04.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_05.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_06.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_07.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_08.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_09.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_10.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_11.tif \
		/vsizip/src/wc2.0_30s_tmax.zip/wc2.0_30s_tmax_12.tif 
	# Float32 datatype, so use PREDICTOR=3
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=3 tmp/tmax.vrt dist/tmax.tif

bio.tif: init
	@echo Creating bio.tif
	cd src && wget -c http://biogeo.ucdavis.edu/data/worldclim/v2.0/tif/base/wc2.0_30s_bio.zip
	gdalbuildvrt tmp/bio.vrt -overwrite -separate \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_01.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_02.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_03.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_04.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_05.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_06.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_07.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_08.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_09.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_10.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_11.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_12.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_13.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_14.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_15.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_16.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_17.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_18.tif \
		/vsizip/src/wc2.0_30s_bio.zip/wc2.0_bio_30s_19.tif
	# Float64 datatype. Seems excessive, so convert to Float32 and use PREDICTOR=3
	gdal_translate -co NUM_THREADS=ALL_CPUS -co TILED=YES -co COMPRESS=DEFLATE -co ZLEVEL=1 -co PREDICTOR=3 -ot Float32 tmp/bio.vrt dist/bio.tif

sync: init
	@echo Syncing to S3...
	aws s3 sync --storage-class STANDARD_IA ./dist s3://geofolio-raster-baselayers/worldclim/${VERSION}/

clean:
	@echo Cleaning up...
	rm -rf src
	rm -rf tmp
	rm -rf dist
