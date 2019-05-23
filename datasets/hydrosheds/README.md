# HydroSHEDS

HydroSHEDS dataset.

## Availability

* `/vsis3/geofolio-public/hydrosheds/dem_15s.vrt`
* `/vsis3/geofolio-public/hydrosheds/dir_15s.vrt`
* `/vsis3/geofolio-public/hydrosheds/acc_15s.vrt`

## Processing Notes

* Apparently the mirror at https://hydrosheds.cr.usgs.gov/datadownload.php?reqdata=15accg is no longer maintained, and is returning 404s.
* Then the main download site at https://hydrosheds.org/downloads is also down. 
* But there is a download link to a dropbox at https://www.dropbox.com/sh/hmpwobbz9qixxpe/AAAI_jasMJPZl_6wX6d3vEOla?dl=0. 
* Anyway, use the dropbox links for now, and update to a new URL if one becomes available in the future. Also, the dropbox URLS contain lots of garbage and random number, which I would not be surprised are attached to a session or something and can change unexpectedly. What happened to permalinks? Grr...
* Data in ESRI Grid or raw BIL format. Use the zipped BIL files, which can be accessed using `vsizip` as `/vsizip/eu_acc_30s_bil.zip/eu_acc_30s.bil`.
* Data is split up into continental regions. `<region>_<dataset>_<resolution>_<format>.zip`, eg `af_acc_15s_bil.zip` Where AF=Africa, NA=North America, EU=Europe, etc. Few different resoltutions for different datasets, will use the highest one. Format we'll use BIL.
* Region files will be kept as is (only converted to GTiff) and added to a global .vrt file for the whole dataset to simplify access.
* There are 3 second versions of the DEM and CON datasets. I'd like to add these, but they are split up into lots of tiles, and mass-downloading these from the dropbox links is not something I want to spend time on now. Will revisit this after a normal download location becomes available again.
* So it seems like the DEM_15s files are corrupt. There is another DEM_15s_BIL subdirectory in the regular DEM_15s_BIL directory with what looks like versions. Lets use those and try again.
* Ok so it seems like SOME of the files in the above subdirectory are ALSO corrupt. Removing them, so no AU/CA/SA regions for the DEM until there is a better download location.

## More Information

* [Dataset Technical Docs](HydroSHEDS_TechDoc_v10.pdf)
* [hydrosheds.org](https://hydrosheds.org/)

## Licensing

This product "raster-baselayers" incorporates data from the HydroSHEDS database which is © World Wildlife Fund, Inc. (2006-2013) and has been used herein under license. WWF has not evaluated the data as altered and incorporated within [insert Licensee Derivative Product name], and therefore gives no warranty regarding its accuracy, completeness, currency or suitability for any particular purpose. Portions of the HydroSHEDS database incorporate data which are the intellectual property rights of © USGS (2006-2008), NASA (2000-2005), ESRI (1992-1998), CIAT (2004-2006), UNEP-WCMC (1993), WWF (2004), Commonwealth of Australia (2007), and Her Royal Majesty and the British Crown and are used under license. The HydroSHEDS database and more information are available at http://www.hydrosheds.org.
