DATASET=esa_cci_landcover
VERSION=v1

all: process

init:
	mkdir -p src tmp dist

process: landcover_1992_2015 ndvi_1999_2012 burned_areas_2000_2012 snow_occurrence_2000_2012
	@echo Processing...

landcover_1992_2015: init
	cd src && wget -c https://storage.googleapis.com/cci-lc-v207/ESACCI-LC-L4-LCCS-Map-300m-P1Y-1992_2015-v2.0.7.zip
	cd src && wget -c http://maps.elie.ucl.ac.be/CCI/viewer/download/ESACCI-LC-Legend.csv
	unzip -o src/ESACCI-LC-L4-LCCS-Map-300m-P1Y-1992_2015-v2.0.7.zip -d tmp
	mv tmp/scratch/ESACCI-LC-L4-LCCS-Map-300m-P1Y-1992_2015-v2.0.7.tif dist/landcover_1992_2015.tif
	mv src/ESACCI-LC-Legend.csv dist/landcover_1992_2015_legend.csv

ndvi_1999_2012.tif: init
	cd src && wget -c ftp://geo10.elie.ucl.ac.be/CCI/ESACCI-LC-L4-NDVI-Cond-1000m-P14Y7D-1999-2012-v2.0_part1.tif.7z
	cd src && wget -c ftp://geo10.elie.ucl.ac.be/CCI/ESACCI-LC-L4-NDVI-Cond-1000m-P14Y7D-1999-2012-v2.0_part2.tif.7z
	7z e src/ESACCI-LC-L4-NDVI-Cond-1000m-P14Y7D-1999-2012-v2.0_part1.tif.7z -otmp/ -aos
	7z e src/ESACCI-LC-L4-NDVI-Cond-1000m-P14Y7D-1999-2012-v2.0_part2.tif.7z -otmp/ -aos
	gdalbuildvrt tmp/ndvi_1999_2012.vrt tmp/ESACCI-LC-L4-NDVI-Cond-AggMean*.tif -separate
	gdal_translate tmp/ndvi_1999_2012.vrt dist/ndvi_1999_2012_7d_avg.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS -co BIGTIFF=YES
	gdalbuildvrt tmp/ndvi_1999_2012_status.vrt tmp/ESACCI-LC-L4-NDVI-Cond-Status*.tif -separate
	gdal_translate tmp/ndvi_1999_2012_status.vrt dist/ndvi_1999_2012_status.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS -co BIGTIFF=YES


burned_areas_2000_2012: init 
	cd src && wget -c ftp://geo10.elie.ucl.ac.be/CCI/ESACCI-LC-L4-BA-Cond-500m-P13Y7D-2000-2012-v2.0.tif.7z
	7z e src/ESACCI-LC-L4-BA-Cond-500m-P13Y7D-2000-2012-v2.0.tif.7z -otmp/ -aos
	gdalbuildvrt tmp/burned_areas_2002_2012.vrt tmp/ESACCI-LC-L4-BA-Cond-AggOcc*.tif -separate
	gdal_translate tmp/burned_areas_2002_2012.vrt dist/burned_areas_2002_2012_7d_avg.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS -co BIGTIFF=YES

snow_occurrence_2000_2012: init
	cd src && wget -c ftp://geo10.elie.ucl.ac.be/CCI/ESACCI-LC-L4-Snow-Cond-500m-P13Y7D-2000-2012-v2.0.tif.7z
	7z e src/ESACCI-LC-L4-Snow-Cond-500m-P13Y7D-2000-2012-v2.0.tif.7z -otmp/ -aos
	gdalbuildvrt tmp/snow_occurrence_2002_2012.vrt tmp/ESACCI-LC-L4-Snow-Cond-AggOcc*.tif -separate
	gdal_translate tmp/snow_occurrence_2002_2012.vrt dist/snow_occurrence_2002_2012_7d_avg.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS -co BIGTIFF=YES

sync:
	test $(BUCKET)
	@echo Syncing to s3://${BUCKET}/${DATASET}/${VERSION}/
	aws s3 mb s3://${BUCKET}/ || true
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	@echo Cleaning up...
	rm -rf src tmp dist
