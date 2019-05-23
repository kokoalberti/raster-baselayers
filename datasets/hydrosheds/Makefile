DATASET=hydrosheds
VERSION=v1
BUCKET=geofolio-public

all: process sync clean

init:
	mkdir -p src tmp dist

process: dem_15s.vrt dir_15s.vrt acc_15s.vrt
	@echo Processing...

acc_15s.vrt: init
	# Download the regions
	# See processing notes in README.md about these idiotic Dropbox URLS.
	cd src && wget -O af_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AACp7JI8vscIBPHzcS0ntsHqa/HydroSHEDS_ACC/ACC_15s_BIL/af_acc_15s_bil.zip?dl=1
	cd src && wget -O as_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAAECMmFKg11mNg-nh1CGG5ya/HydroSHEDS_ACC/ACC_15s_BIL/as_acc_15s_bil.zip?dl=1
	cd src && wget -O au_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AACUwfyGh9VHwS1N2waTPcooa/HydroSHEDS_ACC/ACC_15s_BIL/au_acc_15s_bil.zip?dl=1
	cd src && wget -O ca_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAAGrT79wWGN6a33mLLMnqy8a/HydroSHEDS_ACC/ACC_15s_BIL/ca_acc_15s_bil.zip?dl=1
	cd src && wget -O eu_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADxzwiM825dWbSKpziE9uO9a/HydroSHEDS_ACC/ACC_15s_BIL/eu_acc_15s_bil.zip?dl=1
	cd src && wget -O na_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AABSTWZTz2Es1_aTC1CB_LL4a/HydroSHEDS_ACC/ACC_15s_BIL/na_acc_15s_bil.zip?dl=1
	cd src && wget -O sa_acc_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADniliM5_gKNyBlF-ovSjXGa/HydroSHEDS_ACC/ACC_15s_BIL/sa_acc_15s_bil.zip?dl=1
	# Convert to GTiff
	mkdir -p dist/acc_15s/
	gdal_translate /vsizip/src/af_acc_15s_bil.zip/af_acc_15s.bil dist/acc_15s/af_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/as_acc_15s_bil.zip/as_acc_15s.bil dist/acc_15s/as_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/au_acc_15s_bil.zip/au_acc_15s.bil dist/acc_15s/au_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/ca_acc_15s_bil.zip/ca_acc_15s.bil dist/acc_15s/ca_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/eu_acc_15s_bil.zip/eu_acc_15s.bil dist/acc_15s/eu_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/na_acc_15s_bil.zip/na_acc_15s.bil dist/acc_15s/na_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/sa_acc_15s_bil.zip/sa_acc_15s.bil dist/acc_15s/sa_acc_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdalbuildvrt dist/acc_15s.vrt dist/acc_15s/*.tif

dir_15s.vrt: init
	# Download the regions
	# See processing notes in README.md about these idiotic Dropbox URLS.
	cd src && wget -O af_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADQrhvOxT6uGBwp2PbcyJnqa/HydroSHEDS_DIR/DIR_15s_BIL/af_dir_15s_bil.zip?dl=1
	cd src && wget -O as_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AACKLmXE5wrkKyFlRtPrBF3da/HydroSHEDS_DIR/DIR_15s_BIL/as_dir_15s_bil.zip?dl=1
	cd src && wget -O au_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AACQoyYsyidng9WPgKpC1dGKa/HydroSHEDS_DIR/DIR_15s_BIL/au_dir_15s_bil.zip?dl=1
	cd src && wget -O ca_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AABlsoFQpxA3ERQjFeQ7AZ9Oa/HydroSHEDS_DIR/DIR_15s_BIL/ca_dir_15s_bil.zip?dl=1
	cd src && wget -O eu_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAASruPNCVxqJmy-JNn0a2Cla/HydroSHEDS_DIR/DIR_15s_BIL/eu_dir_15s_bil.zip?dl=1
	cd src && wget -O na_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAAoKyQcSd-GeJnWF8XupzMza/HydroSHEDS_DIR/DIR_15s_BIL/na_dir_15s_bil.zip?dl=1
	cd src && wget -O sa_dir_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAApsku_7kejs2wJrXq_N7Efa/HydroSHEDS_DIR/DIR_15s_BIL/sa_dir_15s_bil.zip?dl=1
	# Convert to GTiff
	mkdir -p dist/dir_15s/
	gdal_translate /vsizip/src/af_dir_15s_bil.zip/af_dir_15s.bil dist/dir_15s/af_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/as_dir_15s_bil.zip/as_dir_15s.bil dist/dir_15s/as_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/au_dir_15s_bil.zip/au_dir_15s.bil dist/dir_15s/au_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/ca_dir_15s_bil.zip/ca_dir_15s.bil dist/dir_15s/ca_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/eu_dir_15s_bil.zip/eu_dir_15s.bil dist/dir_15s/eu_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/na_dir_15s_bil.zip/na_dir_15s.bil dist/dir_15s/na_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/sa_dir_15s_bil.zip/sa_dir_15s.bil dist/dir_15s/sa_dir_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdalbuildvrt dist/dir_15s.vrt dist/dir_15s/*.tif

dem_15s.vrt: init
	# Download the regions
	# See processing notes in README.md about these idiotic Dropbox URLS.
	cd src && wget -O af_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADcjLmRGyWKJYMZAqCd50gsa/HydroSHEDS_DEM/DEM_15s_BIL/af_dem_15s_bil.zip?dl=1
	cd src && wget -O as_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AABDyGGrP60_6yF0z8D3cruWa/HydroSHEDS_DEM/DEM_15s_BIL/as_dem_15s_bil.zip?dl=1
	cd src && wget -O au_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADJJIO51HB8knJ5KsCV03Ata/HydroSHEDS_DEM/DEM_15s_BIL/au_dem_15s_bil.zip?dl=1
	cd src && wget -O ca_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AACF0C6EUd6Ov72bwrWs7P0ta/HydroSHEDS_DEM/DEM_15s_BIL/ca_dem_15s_bil.zip?dl=1
	cd src && wget -O eu_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAA28ypSfCJd03YqOlXjostya/HydroSHEDS_DEM/DEM_15s_BIL/eu_dem_15s_bil.zip?dl=1
	cd src && wget -O na_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AADrkgEVzIO2HHpyaPrPP3e3a/HydroSHEDS_DEM/DEM_15s_BIL/na_dem_15s_bil.zip?dl=1
	cd src && wget -O sa_dem_15s_bil.zip https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAB_dezoaxxxoPFN1x9aUIeBa/HydroSHEDS_DEM/DEM_15s_BIL/sa_dem_15s_bil.zip?dl=1
	# Convert to GTiff
	mkdir -p dist/dem_15s/
	gdal_translate /vsizip/src/af_dem_15s_bil.zip/af_dem_15s.bil dist/dem_15s/af_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/as_dem_15s_bil.zip/as_dem_15s.bil dist/dem_15s/as_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/au_dem_15s_bil.zip/au_dem_15s.bil dist/dem_15s/au_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/ca_dem_15s_bil.zip/ca_dem_15s.bil dist/dem_15s/ca_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/eu_dem_15s_bil.zip/eu_dem_15s.bil dist/dem_15s/eu_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/na_dem_15s_bil.zip/na_dem_15s.bil dist/dem_15s/na_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdal_translate /vsizip/src/sa_dem_15s_bil.zip/sa_dem_15s.bil dist/dem_15s/sa_dem_15s.tif -co COMPRESS=LZW -co TILED=YES -co NUM_THREADS=ALL_CPUS
	gdalbuildvrt dist/dem_15s.vrt dist/dem_15s/*.tif

sync:
	@echo Syncing to S3...
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	@echo Cleaning up...
	rm -rf src
	rm -rf tmp
	rm -rf dist
