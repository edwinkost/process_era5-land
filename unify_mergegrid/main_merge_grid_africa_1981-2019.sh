#!/bin/bash

#~ #PBS -l walltime=24:00:00
#~ #PBS -l select=1:ncpus=8:mem=64gb

#PBS -q express -P exp-00044

#~ #PBS -l walltime=48:00:00
#~ #PBS -l select=1:ncpus=16:mem=62gb

#~ #PBS -l walltime=70:00:00
#~ #PBS -l select=1:ncpus=48:mem=126gb

#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=256:mem=960gb

#PBS -N mergegrid_1981-2019

set -x

# load the required modules
. /rds/general/user/esutanud/home/load_all_default.sh

# go to the folder where the scripts are stored
cd /rds/general/user/esutanud/home/github/edwinkost/process_era5-land/unify_mergegrid/

#~ OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_merged/1981-1989/"
#~ INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/"

INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/"

OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa_merged/1981-2019/"


bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-average &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_fal-average &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_spressu-avg &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-average &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-maximum &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-minimum &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-ssrad &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_wind10m-avg &

wait

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-maximum &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-minimum &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-preci &

wait

set +x
