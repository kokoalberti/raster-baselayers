# WorldClim

WorldClim is a set of global climate layers (gridded climate data) with a spatial resolution of about 1 km2. These data can be used for mapping and spatial modeling. 

## Monthly Precipitation 1970-2000

Stored in a 12-band optimized GTiff at `s3://geofolio-raster-baselayers/worldclim/prec.tif`.

## Processing Notes

* Data is available in zipped GTiff format, each compresses with LZW.
* No tiling applied, so that needs to be done.
* Processing everything with DEFLATE and ZLEVEL 1.
* PREDICTOR=2 for Int data, PREDICTOR=3 for Float data.
* All the bioclim data had datatype Float64, which seems excessive? Convert all to Float32, compress with DEFLATE and PREDICTOR=3. There are 19 separate files in there, convert all to a single GTiff with 19 bands.
* If you need a particular band it's possible to query only that one using GDAL.

## More information

[http://worldclim.org/](http://worldclim.org/)