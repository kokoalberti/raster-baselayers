# JAXA ALOS World 30m DEM

Just some notes on creating the JAXA ALOS World 30m DEM. It should really be included in this repo, but havent sorted it out properly yet.

## Outputs

* `jaxa_alos_world_30m.vrt`

## Processing Notes

* Dataset is rather large and needs about 700Gb scratch space to process the entire thing
* It also takes a while
* Processing optimizes some 22k tiles by adding tiling and proper compression, shrinking the dataset to about 150Gb.

## More information

* [https://kokoalberti.com/articles/experiments-with-the-global-jaxa-alos-world-30m-dem-on-aws-s3/](https://kokoalberti.com/articles/experiments-with-the-global-jaxa-alos-world-30m-dem-on-aws-s3/)
* [http://opentopo.sdsc.edu/raster?opentopoID=OTALOS.112016.4326.2](http://opentopo.sdsc.edu/raster?opentopoID=OTALOS.112016.4326.2)
