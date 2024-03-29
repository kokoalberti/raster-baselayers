# GLEAM

GLEAM (Global Land Evaporation Amsterdam Model) global land evaporation components.

## Outputs

Monthly values 2003-2018 (192 bands): 

* `monthly/E.tif`
* `monthly/Eb.tif`
* `monthly/Ei.tif`
* `monthly/Ep.tif`
* `monthly/Es.tif`
* `monthly/Et.tif`
* `monthly/Ew.tif`
* `monthly/S.tif`
* `monthly/SMroot.tif`
* `monthly/SMsurf.tif`

Monthly averages 2003-2018 (12 bands):

* `monthly/E_avg.tif`
* `monthly/Eb_avg.tif`
* `monthly/Ei_avg.tif`
* `monthly/Ep_avg.tif`
* `monthly/Es_avg.tif`
* `monthly/Et_avg.tif`
* `monthly/Ew_avg.tif`
* `monthly/S_avg.tif`
* `monthly/SMroot_avg.tif`
* `monthly/SMsurf_avg.tif`

## Processing Notes

* Reading NetCDF data in GDAL is a pain: https://gis.stackexchange.com/questions/242270/gdalwarp-netcdf-input-file-has-no-raster-bands?rq=1
* Data in NetCDF format from password-protected SFTP site
* Command-line downloads over SFTP are a pain. See for info: https://stackoverflow.com/questions/5386482/how-to-run-the-sftp-command-with-a-password-from-bash-script
* So sshpass needs to be installed before this works. FFS why does this have to be so complicated?
* This seems to work: `sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/E_2003_2018_GLEAM_v3.3b_MO.nc`

## Attribution

* Martens, B., Miralles, D.G., Lievens, H., van der Schalie, R., de Jeu, R.A.M., Fernández-Prieto, D., Beck, H.E., Dorigo, W.A., and Verhoest, N.E.C.: GLEAM v3: satellite-based land evaporation and root-zone soil moisture, Geoscientific Model Development, 10, 1903–1925, doi: 10.5194/gmd-10-1903-2017, 2017.

* Miralles, D.G., Holmes, T.R.H., de Jeu, R.A.M., Gash, J.H., Meesters, A.G.C.A., Dolman, A.J.: Global land-surface evaporation estimated from satellite-based observations, Hydrology and Earth System Sciences, 15, 453–469, doi: 10.5194/hess-15-453-2011, 2011.

## More Information

* [GLEAM v3.3 Readme](README_GLEAM_v33.pdf)
* [https://www.gleam.eu/](https://www.gleam.eu/)
