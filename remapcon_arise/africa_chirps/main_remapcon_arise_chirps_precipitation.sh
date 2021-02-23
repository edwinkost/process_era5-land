#!/bin/bash

set -x

# chirps precipitation

#~ sutan101@gpu040.cluster:/scratch/depfg/sutan101/data/chirps$ ls -lah
#~ total 824G
#~ drwxr-xr-x  2 sutan101 depfg    41 Feb 23 13:54 .
#~ drwxr-xr-x 30 sutan101 depfg    29 Feb 23 07:37 ..
#~ -rw-r-----  1 sutan101 depfg  782G Feb 23 13:34 chirps-v2.0.1981-2020.days_p05.nc

INP_FOLDER="/scratch/depfg/sutan101/data/chirps/"

MAIN_OUT_FOLDER="/scratch/depfg/sutan101/meteo_arise/version_2021-02-XX/chirps_africa/"
mkdir -p ${MAIN_OUT_FOLDER}

# - 30 arcmin resolution
RESOLUTION=0.5
OUT_FOLDER=${MAIN_OUT_FOLDER}/half_arcdeg/
bash remapcon_arise.sh ${INP_FOLDER}/chirps-v2.0.1981-2020.days_p05.nc ${RESOLUTION} ${OUT_FOLDER} africa_chirps-v2.0_1981-2020_p05_rempacon-30-arcmin monsum mm.month-1

# - 5 arcmin resolution
RESOLUTION=0.083333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
OUT_FOLDER=${MAIN_OUT_FOLDER}/5_arcmin/
bash remapcon_arise.sh ${INP_FOLDER}/chirps-v2.0.1981-2020.days_p05.nc ${RESOLUTION} ${OUT_FOLDER} africa_chirps-v2.0_1981-2020_p05_rempacon-5-arcmin monsum mm.month-1

# - 150 arcsec resolution
RESOLUTION=0.041666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666667
OUT_FOLDER=${MAIN_OUT_FOLDER}/150_arcsec/
bash remapcon_arise.sh ${INP_FOLDER}/chirps-v2.0.1981-2020.days_p05.nc ${RESOLUTION} ${OUT_FOLDER} africa_chirps-v2.0_1981-2020_p05_rempacon-150-arcsec monsum mm.month-1

set +x
