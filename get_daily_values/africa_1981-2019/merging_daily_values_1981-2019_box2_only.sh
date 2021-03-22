#!/bin/bash

#PBS -q express -P exp-00044

#~ #PBS -l walltime=48:00:00
#~ #PBS -l select=1:ncpus=48:mem=126gb

#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=32:mem=62gb

#PBS -N day_merge_box2_only


#~ # send emails if aborted, began and ended (not always supported)
#~ #PBS -M edwinkost@gmail.com
#~ #PBS -m abe


# load software
. /rds/general/user/esutanud/home/load_all_default.sh

# goto the working directory
cd /rds/general/user/esutanud/home/github/edwinkost/process_era5-land/get_daily_values/africa_1981-2019/


set -x


# box 2
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box2/daily_before_remapcon/"
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
