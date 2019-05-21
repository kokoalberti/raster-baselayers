# raster-baselayers

Set of Makefiles to download, optimize, and upload a selection of public
raster datasets to AWS S3. 

* [globcover](datasets/globcover/)
* [worldclim](datasets/worldclim/)
* [soilgrids](datasets/soilgrids/)
* [usgs_ecotapestry](datasets/usgs_ecotapestry)

# GDAL virtual filesystem links

| Dataset              | Layer                     | Path                                                                                            |
| -------------------- | ------------------------- | ----------------------------------------------------------------------------------------------- |
| `globcover`          | `globcover`               | `/vsis3/geofolio-raster-baselayers/globcover/v1/globcover.tif`                                  |
| -------------------- | ------------------------- | ----------------------------------------------------------------------------------------------- |
| `worldclim`          | `prec`                    | `/vsis3/geofolio-raster-baselayers/worldclim/v1/prec.tif`                                       |
| `worldclim`          | `tavg`                    | `/vsis3/geofolio-raster-baselayers/worldclim/v1/tavg.tif`                                       |
| `worldclim`          | `tmin`                    | `/vsis3/geofolio-raster-baselayers/worldclim/v1/tmin.tif`                                       |
| `worldclim`          | `tmax`                    | `/vsis3/geofolio-raster-baselayers/worldclim/v1/tmax.tif`                                       |
| `worldclim`          | `bio`                     | `/vsis3/geofolio-raster-baselayers/worldclim/v1/bio.tif`                                        |
| `worldclim`          | `bio`                     | `/vsis3/geofolio-raster-baselayers/worldclim/v1/bio.tif`                                        |
| -------------------- | ------------------------- | ----------------------------------------------------------------------------------------------- |
| `soilgrids`          | `texture_0cm`             | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/texture_0cm.tif`                                |
| `soilgrids`          | `siltfrac_0cm`            | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/siltfrac_0cm.tif.tif`                           |
| `soilgrids`          | `sandfrac_0cm`            | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/sandfrac_0cm.tif`                               |
| `soilgrids`          | `clayfrac_0cm`            | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/clayfrac_0cm.tif`                               |
| `soilgrids`          | `ph`                      | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/ph.tif`                                         |
| `soilgrids`          | `organic-carbon`          | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/organic-carbon.tif`                             |
| `soilgrids`          | `bulk-density`            | `/vsis3/geofolio-raster-baselayers/soilgrids/v1/bulk-density.tif`                               |
| -------------------- | ------------------------- | ----------------------------------------------------------------------------------------------- |
| `usgs_ecotapestry`   | `lithology`               | `/vsis3/geofolio-raster-baselayers/usgs_ecotapestry/v1/lithology.tif`                           |
| `usgs_ecotapestry`   | `landform`                | `/vsis3/geofolio-raster-baselayers/usgs_ecotapestry/v1/landform.tif`                            |
| -------------------- | ------------------------- | ----------------------------------------------------------------------------------------------- |
| `jaxa_alos_world_30m`| `jaxa_alos_world_30m`     | `/vsis3/geofolio-public/jaxa_alos_world_30m/jaxa_alos_world_30m.vrt`                            |
