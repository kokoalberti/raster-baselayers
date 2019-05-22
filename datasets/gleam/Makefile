DATASET=gleam
VERSION=v1
BUCKET=geofolio-private

all: process sync clean

init:
	mkdir -p src tmp dist dist/monthly/

gleam-nc2tif.py:
	wget -q -O gleam-nc2tif.py https://raw.githubusercontent.com/kokoalberti/geocmd/master/gleam-nc2tif/gleam-nc2tif.py
	chmod 755 gleam-nc2tif.py

process: gleam-nc2tif.py E.tif Ep.tif Ei.tif Eb.tif Es.tif Et.tif Ew.tif S.tif SMroot.tif SMsurf.tif
	@echo Processing...

E.tif: init
	[ -f src/E_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/E_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/E_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/E.tif --monthly ./dist/monthly/E_avg.tif

Ep.tif: init
	[ -f src/Ep_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Ep_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Ep_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Ep.tif --monthly ./dist/monthly/Ep_avg.tif

Ei.tif: init
	[ -f src/Ei_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Ei_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Ei_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Ei.tif --monthly ./dist/monthly/Ei_avg.tif

Eb.tif: init
	[ -f src/Eb_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Eb_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Eb_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Eb.tif --monthly ./dist/monthly/Eb_avg.tif

Es.tif: init
	[ -f src/Es_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Es_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Es_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Es.tif --monthly ./dist/monthly/Es_avg.tif

Et.tif: init
	[ -f src/Et_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Et_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Et_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Et.tif --monthly ./dist/monthly/Et_avg.tif

Ew.tif: init
	[ -f src/Ew_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/Ew_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/Ew_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/Ew.tif --monthly ./dist/monthly/Ew_avg.tif

S.tif: init
	[ -f src/S_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/S_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/S_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/S.tif --monthly ./dist/monthly/S_avg.tif

SMroot.tif: init
	[ -f src/SMroot_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/SMroot_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/SMroot_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/SMroot.tif --monthly ./dist/monthly/SMroot_avg.tif

SMsurf.tif: init
	[ -f src/SMsurf_2003_2018_GLEAM_v3.3b_MO.nc ] && echo File exists, skipping download. || (cd src && sshpass -v -p "v33_GLEAM2019#aw" sftp -oPort=2225 -oStrictHostKeyChecking=no gleamuser@hydras.ugent.be:/data/v3.3b/monthly/SMsurf_2003_2018_GLEAM_v3.3b_MO.nc)
	python3 gleam-nc2tif.py ./src/SMsurf_2003_2018_GLEAM_v3.3b_MO.nc ./dist/monthly/SMsurf.tif --monthly ./dist/monthly/SMsurf_avg.tif

sync:
	@echo Syncing to S3...
	aws s3 sync --storage-class STANDARD_IA ./dist s3://${BUCKET}/${DATASET}/${VERSION}/ --dryrun

clean:
	@echo Cleaning up...
	rm -rf src
	rm -rf tmp
	rm -rf dist
