VERSION=v1
BUCKET=geofolio-public

all: download process sync clean

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
	# - Sync dist directory to geofolio-public bucket

clean:
	rm -rf src tmp dist
