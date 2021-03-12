#!/bin/bash

#~ #PBS -l walltime=24:00:00
#~ #PBS -l select=1:ncpus=8:mem=64gb

#PBS -q express -P exp-00044

#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=16:mem=62gb

#PBS -N remap_box_1


set -x

cd $HOME

# load the required modules
. load_all_default.sh


OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box1/daily_after_remapcon/merged_1981-2019/"

INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box1/daily_before_remapcon/merged_1981-2019/"

#~ esutanud@login-5:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box1/daily_before_remapcon/merged_1981-2019$ ls -lah *.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_d2m-average_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_d2m-maximum_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_d2m-minimum_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_fal-average_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_spressu-avg_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_t2m-average_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_t2m-maximum_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_t2m-minimum_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_total-preci_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_total-ssrad_1981-2019.nc
#~ -rw------- 1 esutanud hpc-ec407 48G Mar  4 08:20 era5-land_daily_wind10m-avg_1981-2019.nc

# making output folder 
mkdir -p ${OUT_FOLDER}

# making the clone map at 30sec
CLONE30SEC_FILE=${OUT_FOLDER}/clone_africa_30sec.map
#~ africa bounding box (complete)
#~ xmin, xmax = -19, 52
#~ ymin, ymax = -36, 39
#~ ncols for 30sec	= 8520
#~ nrows for 30sec	= 9000
mapattr -s -R 9000 -C 8520 -B -P yb2t -x -19 -y 39 -l 0.008333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333 ${CLONE30SEC_FILE}


bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_total-preci_1981-1989.nc ${OUT_FOLDER} era5-land_daily_total-preci monsum  "m.month-1"   ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-average_1981-1989.nc ${OUT_FOLDER} era5-land_daily_d2m-average monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-maximum_1981-1989.nc ${OUT_FOLDER} era5-land_daily_d2m-maximum monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-minimum_1981-1989.nc ${OUT_FOLDER} era5-land_daily_d2m-minimum monmean "K"           ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-average_1981-1989.nc ${OUT_FOLDER} era5-land_daily_t2m-average monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-maximum_1981-1989.nc ${OUT_FOLDER} era5-land_daily_t2m-maximum monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-minimum_1981-1989.nc ${OUT_FOLDER} era5-land_daily_t2m-minimum monmean "K"           ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_spressu-avg_1981-1989.nc ${OUT_FOLDER} era5-land_daily_spressu-avg monmean "1"           ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_fal-average_1981-1989.nc ${OUT_FOLDER} era5-land_daily_fal-average monmean "1"           ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_total-ssrad_1981-1989.nc ${OUT_FOLDER} era5-land_daily_total-ssrad monmean "J.m-2.day-1" ${CLONE30SEC_FILE} &

bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_wind10m-avg_1981-1989.nc ${OUT_FOLDER} era5-land_daily_wind10m-avg monmean "m.s-1"       ${CLONE30SEC_FILE} &

wait

set +x
