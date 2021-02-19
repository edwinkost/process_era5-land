
set -x

#~ esutanud@login-7:/rds/general/ephemeral/user/esutanud/ephemeral/meteo_arise/africa_example$ ls -lah Africa-box1/daily_before_remapcon/era5-land_daily_*1981*
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-average_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-maximum_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-minimum_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_fal-average_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_spressu-avg_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-average_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-maximum_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-minimum_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_total-preci_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:08 Africa-box1/daily_before_remapcon/era5-land_daily_total-ssrad_1981.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 01:10 Africa-box1/daily_before_remapcon/era5-land_daily_wind10m-avg_1981.nc

#~ esutanud@login-7:/rds/general/ephemeral/user/esutanud/ephemeral/meteo_arise/africa_example$ ls -lah Africa-box*/daily_before_remapcon/era5-land_daily_*1989*
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_d2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:25 Africa-box1/daily_before_remapcon/era5-land_daily_fal-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:25 Africa-box1/daily_before_remapcon/era5-land_daily_spressu-avg_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_t2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:25 Africa-box1/daily_before_remapcon/era5-land_daily_total-preci_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:25 Africa-box1/daily_before_remapcon/era5-land_daily_total-ssrad_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.3G Nov 11 02:27 Africa-box1/daily_before_remapcon/era5-land_daily_wind10m-avg_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_d2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_d2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_d2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 03:59 Africa-box2/daily_before_remapcon/era5-land_daily_fal-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 03:59 Africa-box2/daily_before_remapcon/era5-land_daily_spressu-avg_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_t2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_t2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:01 Africa-box2/daily_before_remapcon/era5-land_daily_t2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 03:59 Africa-box2/daily_before_remapcon/era5-land_daily_total-preci_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 03:59 Africa-box2/daily_before_remapcon/era5-land_daily_total-ssrad_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.2G Nov 11 04:00 Africa-box2/daily_before_remapcon/era5-land_daily_wind10m-avg_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_d2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_d2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_d2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:20 Africa-box3/daily_before_remapcon/era5-land_daily_fal-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:20 Africa-box3/daily_before_remapcon/era5-land_daily_spressu-avg_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_t2m-average_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_t2m-maximum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:24 Africa-box3/daily_before_remapcon/era5-land_daily_t2m-minimum_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:20 Africa-box3/daily_before_remapcon/era5-land_daily_total-preci_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:20 Africa-box3/daily_before_remapcon/era5-land_daily_total-ssrad_1989.nc
#~ -r-------- 1 esutanud hpc-ec407 1.9G Nov 11 06:23 Africa-box3/daily_before_remapcon/era5-land_daily_wind10m-avg_1989.nc


# box 1
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon/"
cd ${OUTPUT_FOLDER}
mkdir merged_1981-1989
cd merged_1981-1989

cdo -L -mergetime ../era5-land_daily_d2m-average_*.nc era5-land_daily_d2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-maximum_*.nc era5-land_daily_d2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-minimum_*.nc era5-land_daily_d2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_fal-average_*.nc era5-land_daily_fal-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_spressu-avg_*.nc era5-land_daily_spressu-avg_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-average_*.nc era5-land_daily_t2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-maximum_*.nc era5-land_daily_t2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-minimum_*.nc era5-land_daily_t2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-preci_*.nc era5-land_daily_total-preci_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-ssrad_*.nc era5-land_daily_total-ssrad_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_wind10m-avg_*.nc era5-land_daily_wind10m-avg_1981-1989.nc &
wait


# box 2
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box2/daily_before_remapcon/"
cd ${OUTPUT_FOLDER}
mkdir merged_1981-1989
cd merged_1981-1989

cdo -L -mergetime ../era5-land_daily_d2m-average_*.nc era5-land_daily_d2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-maximum_*.nc era5-land_daily_d2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-minimum_*.nc era5-land_daily_d2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_fal-average_*.nc era5-land_daily_fal-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_spressu-avg_*.nc era5-land_daily_spressu-avg_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-average_*.nc era5-land_daily_t2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-maximum_*.nc era5-land_daily_t2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-minimum_*.nc era5-land_daily_t2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-preci_*.nc era5-land_daily_total-preci_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-ssrad_*.nc era5-land_daily_total-ssrad_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_wind10m-avg_*.nc era5-land_daily_wind10m-avg_1981-1989.nc &
wait


# box 3
##########################################################################################################################

OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box3/daily_before_remapcon/"
cd ${OUTPUT_FOLDER}
mkdir merged_1981-1989
cd merged_1981-1989

cdo -L -mergetime ../era5-land_daily_d2m-average_*.nc era5-land_daily_d2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-maximum_*.nc era5-land_daily_d2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_d2m-minimum_*.nc era5-land_daily_d2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_fal-average_*.nc era5-land_daily_fal-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_spressu-avg_*.nc era5-land_daily_spressu-avg_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-average_*.nc era5-land_daily_t2m-average_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-maximum_*.nc era5-land_daily_t2m-maximum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_t2m-minimum_*.nc era5-land_daily_t2m-minimum_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-preci_*.nc era5-land_daily_total-preci_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_total-ssrad_*.nc era5-land_daily_total-ssrad_1981-1989.nc &
cdo -L -mergetime ../era5-land_daily_wind10m-avg_*.nc era5-land_daily_wind10m-avg_1981-1989.nc &
wait


set +x
