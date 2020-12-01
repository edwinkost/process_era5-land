
printf "$0"
for arg in "$@"
do 
    printf " $arg"
done
echo

echo "Arg 0: $0"
echo "Arg 1: $1"
echo "Arg 2: $2"
echo "Arg 3: $3"

set -x

#~ esutanud@login-7:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example$ ls -lah Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_*/*daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_d2m-average/era5-land_daily_d2m-average_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_d2m-maximum/era5-land_daily_d2m-maximum_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_d2m-minimum/era5-land_daily_d2m-minimum_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_fal-average/era5-land_daily_fal-average_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_spressu-avg/era5-land_daily_spressu-avg_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_t2m-average/era5-land_daily_t2m-average_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_t2m-maximum/era5-land_daily_t2m-maximum_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_t2m-minimum/era5-land_daily_t2m-minimum_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_total-preci/era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_total-ssrad/era5-land_daily_total-ssrad_rempacon-150-arcsec_daily.nc
#~ -rw------- 1 esutanud hpc-ec407 84G Nov 25 21:18 Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/era5-land_daily_wind10m-avg/era5-land_daily_wind10m-avg_rempacon-150-arcsec_daily.nc


MAIN_INPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/"
MAIN_INPUT_FOLDER=$1


OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/africa_merged/"
OUTPUT_FOLDER=$2



# merging daily files

DAILY_OUTPUT_FOLDER=${OUTPUT_FOLDER}/daily/
mkdir -p ${DAILY_OUTPUT_FOLDER}

INP_FILENAME="era5-land_daily_total-preci/era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc"
INP_FILENAME=$3/$3_rempacon-150-arcsec_daily.nc

OUT_FILENAME=${DAILY_OUTPUT_FOLDER}/"africa_era5-land_daily_total-preci_rempacon-150-arcsec_daily.nc"
OUT_FILENAME=${DAILY_OUTPUT_FOLDER}/africa_$3_rempacon-150-arcsec_daily.nc

BOX1_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"
BOX2_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box2/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"
BOX3_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box3/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"

cdo -L -mergegrid ${BOX3_FILENAME} -mergegrid ${BOX1_FILENAME} ${BOX2_FILENAME} ${OUT_FILENAME} &


# merging monthly files 

MONTHLY_OUTPUT_FOLDER=${OUTPUT_FOLDER}/monthly_but_merged_from_boxes/
mkdir -p ${MONTHLY_OUTPUT_FOLDER}

INP_FILENAME="era5-land_daily_total-preci/era5-land_daily_total-preci_rempacon-150-arcsec_monthly.nc"
INP_FILENAME=$3/$3_rempacon-150-arcsec_monthly.nc

OUT_FILENAME=${MONTHLY_OUTPUT_FOLDER}/"africa_era5-land_daily_total-preci_rempacon-150-arcsec_monthly.nc"
OUT_FILENAME=${MONTHLY_OUTPUT_FOLDER}/africa_$3_rempacon-150-arcsec_monthly.nc

BOX1_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box1/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"
BOX2_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box2/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"
BOX3_FILENAME=${MAIN_INPUT_FOLDER}"/Africa-box3/daily_after_remapcon/merged_1981-1989_with_jobs/150_arcsec/${INP_FILENAME}"

cdo -L -mergegrid ${BOX3_FILENAME} -mergegrid ${BOX1_FILENAME} ${BOX2_FILENAME} ${OUT_FILENAME} &

wait


set +x
