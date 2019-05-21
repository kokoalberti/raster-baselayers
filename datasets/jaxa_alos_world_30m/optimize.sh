#!/bin/bash
# Loop over the files. Run the script from the directory
# with all the original files in it. All paths are relative
# from there.
for file in *.tif
do
    if [ ! -f ../tiles/$file ]; then
        # Create the tile if doesn't exist yet in the tiles 
        # subdirectory. This lets us start/stop the program
        # without having to keep track of where we are.
        echo $file
        # Run the gdal_translate command we figured out 
        # before
        gdal_translate -q "$file" "../tiles/$file" \
            -co NUM_THREADS=ALL_CPUS \
            -co TILED=YES \
            -co COMPRESS=LZW \
            -co PREDICTOR=2 
    fi
done
