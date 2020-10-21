
set -x

YEAR=2017
YEAR_PLUS_1=2018

OUTPUT_FOLDER="/scratch/depfg/sutan101/test_arise_meteo_europe/daily_before_remapcon/"
mkdir -p ${OUTPUT_FOLDER}
cd ${OUTPUT_FOLDER}

MAIN_HOURLY_SOURCE_DIR="/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly/"

#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$ ls -lah
#~ total 4.0K
#~ drwxr-xr-x 8 hoch0001 depfg   6 Oct 14 22:30 .
#~ drwxr-xr-x 3 hoch0001 depfg   1 Oct 14 11:14 ..
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:10 Variable_Falb
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:03 Variable_Snsr
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:09 Variable_Spre
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 19 03:09 Variable_Temp
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:12 Variable_Tpre
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 19 03:11 Variable_Wind

# tp, total precipitation
HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Tpre
# - daily total precipitation, NOTE: using daymax (as hourly source data are accumulative on each day)
DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_total-preci_${YEAR}.nc
cdo -L -b F64 -settime,00:00:00 -setunit,m.day-1      -daymax  -selyear,${YEAR} -shifttime,-25min -selvar,tp  -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

#~ # ssr, surface solar radiation
#~ HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Snsr
#~ # - daily total, NOTE: using daymax (as hourly source data are accumulative on each day)
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_total-ssrad_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,J.m-2.day-1  -daymax  -selyear,${YEAR} -shifttime,-25min -selvar,ssr -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

#~ # d2m
#~ HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Temp
#~ # - maximum
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_d2m-maximum_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymax  -selyear,${YEAR} -shifttime,-25min -selvar,d2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &
#~ # - mean
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_d2m-average_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymean -selyear,${YEAR} -shifttime,-25min -selvar,d2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &
#~ # - minimum
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_d2m-minimum_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymin  -selyear,${YEAR} -shifttime,-25min -selvar,d2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

#~ # t2m
#~ HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Temp
#~ # - maximum
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_t2m-maximum_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymax  -selyear,${YEAR} -shifttime,-25min -selvar,t2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &
#~ # - mean
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_t2m-average_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymean -selyear,${YEAR} -shifttime,-25min -selvar,t2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &
#~ # - minimum
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_t2m-minimum_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,K            -daymin  -selyear,${YEAR} -shifttime,-25min -selvar,t2m -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

#~ # fal
#~ HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Falb
#~ # - mean
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_fal-average_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,dimensionless -daymean -selyear,${YEAR} -shifttime,-25min -selvar,fal -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

#~ # sp
#~ HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Spre
#~ # - mean
#~ DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_spressu-avg_${YEAR}.nc
#~ cdo -L -b F64 -settime,00:00:00 -setunit,Pa            -daymean -selyear,${YEAR} -shifttime,-25min -selvar,sp  -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

wait

set +x
