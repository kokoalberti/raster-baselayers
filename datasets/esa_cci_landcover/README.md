# esa_cci_landcover

Land Cover Products from the ESA Landcover CCI project. The project produced the following global datasets:

* Annual land use at 300m resolution from 1992-2015.
* Surface Reflectance archives (not included here)
* Water bodies (not included here)
* 7 day 1km average vegetation greenness (NDVI) 1999-2012
* 7 day 500m snow frequency 1999-2012
* 7 day 500m burned area occurrence 1999-2021

## Outputs

* `landcover_1992_2015.tif` (24 bands representing 1992-2015)
* `landcover_1992_2015_legend.csv` 
* `ndvi_1999_2012_7d_avg.tif` (53 bands representing weeks)
* `ndvi_1999_2012_status.tif` (53 bands representing weeks)
* `burned_areas_2002_2012_7d_avg.tif` (52 bands representing weeks)
* `snow_occurrence_2002_2012_7d_avg.tif` (52 bands representing weeks)


## Processing Notes

* Land use maps pretty straightforward. Unzip and use as is. Tif contains 24 annual bands already. Probably should replace GlobCover with this.
* NDVI, snow occurrence, and burned area need 7zip to unzip.
* NDVI is in two archies, first contains smoothed NDVI and stdeviation, the second the number of observations and a status layer, which might be useful for QC purposes. Lets include status.
* Burned Areas/Snow Occurrence/NDVI contain 52 tiff files, one for each week. Combine them into a single big one with 52 bands. We'll always need this data together anyway.

## More Information

* https://www.esa-landcover-cci.org/
* Downloads at http://maps.elie.ucl.ac.be/CCI/viewer/download.php

