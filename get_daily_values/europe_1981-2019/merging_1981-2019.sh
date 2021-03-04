#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8
#~ #SBATCH -t 240:00:00
#SBATCH -p defq

#SBATCH -J get_daily_values

#~ #SBATCH --exclusive

# do not forget to load the module required (i.e. cdo)
. /quanta1/home/sutan101/load_my_miniconda_and_my_default_env.sh

# set the folder where you want to store daily files (note that these daily files will still need further processing)
OUTPUT_FOLDER="/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/"

#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon$ ls -lah *1980*
#~ ls: cannot access *1980*: No such file or directory
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon$ ls -lah *1981*
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_d2m-average_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_d2m-maximum_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_d2m-minimum_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:37 era5-land_daily_fal-average_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:37 era5-land_daily_spressu-avg_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_t2m-average_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:37 era5-land_daily_t2m-maximum_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_t2m-minimum_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:37 era5-land_daily_total-preci_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:37 era5-land_daily_total-ssrad_1981.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 16:38 era5-land_daily_wind10m-avg_1981.nc

#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon$ ls -lah *2018*
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_d2m-average_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_d2m-maximum_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_d2m-minimum_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_fal-average_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_spressu-avg_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_t2m-average_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_t2m-maximum_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_t2m-minimum_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:40 era5-land_daily_total-preci_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:40 era5-land_daily_total-ssrad_2018.nc
#~ -rw-r--r-- 1 sutan101 depfg 593M Nov 10 18:41 era5-land_daily_wind10m-avg_2018.nc
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon$ ls -lah *2019*
#~ ls: cannot access *2019*: No such file or directory

set -x

cd ${OUTPUT_FOLDER}

mkdir merged_1981-2019
cd merged_1981-2019

cdo -L -mergetime ../era5-land_daily_d2m-average_*.nc era5-land_daily_d2m-average_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_d2m-maximum_*.nc era5-land_daily_d2m-maximum_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_d2m-minimum_*.nc era5-land_daily_d2m-minimum_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_fal-average_*.nc era5-land_daily_fal-average_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_spressu-avg_*.nc era5-land_daily_spressu-avg_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_t2m-average_*.nc era5-land_daily_t2m-average_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_t2m-maximum_*.nc era5-land_daily_t2m-maximum_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_t2m-minimum_*.nc era5-land_daily_t2m-minimum_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_total-preci_*.nc era5-land_daily_total-preci_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_total-ssrad_*.nc era5-land_daily_total-ssrad_1981-2019.nc &
cdo -L -mergetime ../era5-land_daily_wind10m-avg_*.nc era5-land_daily_wind10m-avg_1981-2019.nc &

wait

set +x
