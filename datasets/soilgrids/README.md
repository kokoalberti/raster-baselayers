# SoilGrids

Soil grids soil information.

## Availability

* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/texture_0cm.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/sandfrac_0cm.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/siltfrac_0cm.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/clayfrac_0cm.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/ph.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/organic-carbon.tif`
* `/vsis3/geofolio-raster-baselayers/soilgrids/v1/bulk-density.tif`

## Processing Notes

* Data actually downloaded from LandGIS datasets hosted on Zenodo, soilgrids FTP site doesnt seem to be active anymore.
* Only parameters at 0cm for now. 
* Origin files are GTiff, but with no tiling, so we have to add that.
* Legend info for texture at [https://github.com/Envirometrix/LandGISmaps/tree/master/tables](https://github.com/Envirometrix/LandGISmaps/tree/master/tables)

## More Information

[https://github.com/Envirometrix/LandGISmaps#soil-properties-and-classes](https://github.com/Envirometrix/LandGISmaps#soil-properties-and-classes)
[http://soilgrids.org](http://soilgrids.org)
