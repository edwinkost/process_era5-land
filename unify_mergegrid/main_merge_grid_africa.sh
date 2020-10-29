
set -x

OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_merged/complete_test/"
INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_example/"

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-average
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-maximum
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_d2m-minimum

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_fal-average

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_spressu-avg

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-average
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-maximum
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_t2m-minimum

bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-preci
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_total-ssrad
bash merge_grid_africa.sh ${INP_FOLDER} ${OUT_FOLDER} era5-land_daily_wind10m-avg

set +x
