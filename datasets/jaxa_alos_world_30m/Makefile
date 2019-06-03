DATASET=jaxa_alos_world_30m
VERSION=v1

all: process

init:
	mkdir -p src tmp dist dist/tiles

download:
	# - Download all the tiles in filelist.zip into a src directory using aria2c

process:
	# - Run the processing script for each file in the src directory, writing
	#   the optimized tile to dist/tiles/<name>.tif
	# - Create a vrt for each filelist in index.zip in dist/tile-<n>.vrt
	# - Create a vrt containing all the index vrts in dist/jaxa_alos_world_30m.vrt

sync:
	test $(BUCKET)
	@echo Syncing to s3://${BUCKET}/${DATASET}/${VERSION}/
	aws s3 mb s3://${BUCKET}/ || true
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/

clean:
	rm -rf src tmp dist
