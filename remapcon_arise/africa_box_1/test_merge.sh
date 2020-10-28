
set -x

#~ esutanud@login-7:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example$ ls -lah Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily*/*daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_d2m-average/era5-land_daily_d2m-average_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_d2m-maximum/era5-land_daily_d2m-maximum_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_d2m-minimum/era5-land_daily_d2m-minimum_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_fal-average/era5-land_daily_fal-average_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_spressu-avg/era5-land_daily_spressu-avg_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_t2m-average/era5-land_daily_t2m-average_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_t2m-maximum/era5-land_daily_t2m-maximum_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_t2m-minimum/era5-land_daily_t2m-minimum_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_total-preci/era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_total-ssrad/era5-land_daily_total-ssrad_rempacon-150-arcsec_daily.nc
#~ Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/era5-land_daily_wind10m-avg/era5-land_daily_wind10m-avg_rempacon-150-arcsec_daily.nc

MAIN_INPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/"

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_merged/"

mkdir -p ${OUTPUT_FOLDER}

INP_FILENAME="era5-land_daily_total-preci/era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc"
OUT_FILENAME=${OUTPUT_FOLDER}/"africa_era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc"

BOX1_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box1/daily_after_remapcon/test_all_variables/150_arcsec/${INP_FILENAME}"
BOX2_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box2/daily_after_remapcon/test_all_variables/150_arcsec/${INP_FILENAME}"
BOX3_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box2/daily_after_remapcon/test_all_variables/150_arcsec/${INP_FILENAME}"

cdo -L -mergegrid ${BOX3_FILENAME} -mergegrid ${BOX1_FILENAME} ${BOX2_FILENAME} ${OUT_FILENAME}

set +x
