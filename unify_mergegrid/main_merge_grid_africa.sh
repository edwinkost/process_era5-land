#!/bin/bash

#PBS -l walltime=24:00:00
#PBS -l select=1:ncpus=12:mem=64gb

#PBS -N merging_africa_1981-1989

set -x

# load the required modules
. /rds/general/user/esutanud/home/load_all_default.sh

# go to the folder where the scripts are stored
cd /rds/general/user/esutanud/home/github/edwinkost/process_era5-land/unify_mergegrid/

OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_merged/1981-1989/"
INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/"

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-average &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-maximum &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-minimum &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_fal-average &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_spressu-avg &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-average &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-maximum &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-minimum &

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-preci &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-ssrad &
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_wind10m-avg &

wait

set +x
