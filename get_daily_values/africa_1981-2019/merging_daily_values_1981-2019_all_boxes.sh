#!/bin/bash

#PBS -q express -P exp-00044

#~ #PBS -l walltime=48:00:00
#~ #PBS -l select=1:ncpus=48:mem=126gb

#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=32:mem=62gb

#PBS -N day_merge_all_boxes

# send emails if aborted, began and ended
#PBS -M edwinkost@gmail.com
#PBS -M abe


# load software
. /rds/general/user/esutanud/home/load_all_default.sh

# goto the working directory
cd /rds/general/user/esutanud/home/github/edwinkost/process_era5-land/get_daily_values/africa_1981-2019/


set -x

#~ esutanud@login-7:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019$ ls -lah */daily_before_remapcon/*2019*
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:19 africa-box1/daily_before_remapcon/era5-land_daily_d2m-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_d2m-maximum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_d2m-minimum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_fal-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_spressu-avg_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:19 africa-box1/daily_before_remapcon/era5-land_daily_t2m-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_t2m-maximum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:19 africa-box1/daily_before_remapcon/era5-land_daily_t2m-minimum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_total-preci_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:18 africa-box1/daily_before_remapcon/era5-land_daily_total-ssrad_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Feb 20 09:20 africa-box1/daily_before_remapcon/era5-land_daily_wind10m-avg_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:58 africa-box2/daily_before_remapcon/era5-land_daily_d2m-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_d2m-maximum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_d2m-minimum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_spressu-avg_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:58 africa-box2/daily_before_remapcon/era5-land_daily_t2m-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_t2m-maximum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:58 africa-box2/daily_before_remapcon/era5-land_daily_t2m-minimum_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_total-preci_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:57 africa-box2/daily_before_remapcon/era5-land_daily_total-ssrad_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Feb 20 08:59 africa-box2/daily_before_remapcon/era5-land_daily_wind10m-avg_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Feb 20 10:34 africa-box3/daily_before_remapcon/era5-land_daily_fal-average_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Feb 20 10:34 africa-box3/daily_before_remapcon/era5-land_daily_spressu-avg_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Feb 20 10:34 africa-box3/daily_before_remapcon/era5-land_daily_total-preci_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Feb 20 10:34 africa-box3/daily_before_remapcon/era5-land_daily_total-ssrad_2019.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Feb 20 10:37 africa-box3/daily_before_remapcon/era5-land_daily_wind10m-avg_2019.nc

# box 1
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box1/daily_before_remapcon/"
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
#~ wait


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
#~ wait


# box 3
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box3/daily_before_remapcon/"
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
#~ wait

wait

set +x
