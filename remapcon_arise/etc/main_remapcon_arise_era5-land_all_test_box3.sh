#!/bin/bash

set -x

#~ INP_FOLDER="/scratch-shared/edwinhs/meteo_arise/tanzania/source_icl_downloaded_2020-04-07/era5-land/"
#~ INP_FOLDER="/rds/general/user/ec407/ephemeral/Senegal/ForEdwin/"
INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box3/daily_before_remapcon/"

#~ esutanud@login-7:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon$ ls -lah *
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-average_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-maximum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-minimum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:00 era5-land_daily_fal-average_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:01 era5-land_daily_spressu-avg_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_t2m-average_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:01 era5-land_daily_t2m-maximum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_t2m-minimum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:01 era5-land_daily_total-preci_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:00 era5-land_daily_total-ssrad_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 672M Oct 23 02:01 era5-land_daily_wind10m-avg_1981.nc

#~ OUT_FOLDER="/scratch-shared/edwinhs/meteo_arise/tanzania/version_2020-04-07/era5-land/"
OUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box3/daily_after_remapcon/test/"

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


bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_total-preci_1981.nc ${OUT_FOLDER} era5-land_total-preci monsum  "m.month-1" ${CLONE30SEC_FILE} &


#~ Variable_Temp:
#~ total 15G
#~ drwxr-sr-x 2 ec407 hpc-ec407 4.0K Sep  9 00:43 .
#~ drwxr-sr-x 9 ec407 hpc-ec407 4.0K Sep  3 15:21 ..
#~ -rw------- 1 ec407 hpc-ec407 2.4G Sep  9 00:42 TNZ-ERA5_daily_d2m_Max_1981-2020.nc
#~ -rw------- 1 ec407 hpc-ec407 2.4G Sep  9 00:43 TNZ-ERA5_daily_d2m_mean_1981-2020.nc
#~ -rw------- 1 ec407 hpc-ec407 2.4G Sep  9 00:43 TNZ-ERA5_daily_d2m_min_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_d2m_Max_1981-2020.nc  ${OUT_FOLDER} senegal_era5-land_d2m-maximum_1981-2020 monmean "K" ${CLONE30SEC_FILE} &
#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_d2m_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_d2m-average_1981-2020 monmean "K" ${CLONE30SEC_FILE} &
#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_d2m_min_1981-2020.nc  ${OUT_FOLDER} senegal_era5-land_d2m-minimum_1981-2020 monmean "K" ${CLONE30SEC_FILE} &

#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 23:02 TNZ-ERA5_daily_t2m_Max_1981-2020.nc
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 22:59 TNZ-ERA5_daily_t2m_mean_1981-2020.nc
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 22:54 TNZ-ERA5_daily_t2m_min_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_t2m_Max_1981-2020.nc  ${OUT_FOLDER} senegal_era5-land_t2m-maximum_1981-2020 monmean "K" ${CLONE30SEC_FILE} &
#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_t2m_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_t2m-average_1981-2020 monmean "K" ${CLONE30SEC_FILE} &
#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Temp/TNZ-ERA5_daily_t2m_min_1981-2020.nc  ${OUT_FOLDER} senegal_era5-land_t2m-minimum_1981-2020 monmean "K" ${CLONE30SEC_FILE} &

#~ Variable_Falb:
#~ total 2.4G
#~ drwxr-sr-x 2 ec407 hpc-ec407 4.0K Aug 30 23:05 .
#~ drwxr-sr-x 9 ec407 hpc-ec407 4.0K Sep  3 15:21 ..
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 22:42 TNZ-ERA5_daily_Fa_mean_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Falb/TNZ-ERA5_daily_Fa_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_fal-average_1981-2020 monmean "1" ${CLONE30SEC_FILE} &

#~ Variable_Spre:
#~ total 2.4G
#~ drwxr-sr-x 2 ec407 hpc-ec407 4.0K Aug 30 23:05 .
#~ drwxr-sr-x 9 ec407 hpc-ec407 4.0K Sep  3 15:21 ..
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 22:51 TNZ-ERA5_daily_Sp_mean_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Spre/TNZ-ERA5_daily_Sp_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_spressu-avg_1981-2020 monmean "Pa" ${CLONE30SEC_FILE} &

#~ Variable_Snsr:
#~ total 2.4G
#~ drwxr-sr-x 2 ec407 hpc-ec407 4.0K Aug 30 23:05 .
#~ drwxr-sr-x 9 ec407 hpc-ec407 4.0K Sep  3 15:21 ..
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 22:45 TNZ-ERA5_daily_Ssr_mean_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Snsr/TNZ-ERA5_daily_Ssr_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_ssr-average_1981-2020 monmean "J.m-2.day-1" ${CLONE30SEC_FILE} &

#~ Variable_Wind:
#~ total 9.4G
#~ drwxr-sr-x 2 ec407 hpc-ec407 4.0K Aug 30 23:28 .
#~ drwxr-sr-x 9 ec407 hpc-ec407 4.0K Sep  3 15:21 ..
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 23:25 TNZ-ERA5_daily_u10_mean_1981-2020.nc
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 23:11 TNZ-ERA5_daily_v10_mean_1981-2020.nc
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 23:16 TNZ-ERA5_daily_WSPEED10m_1981-2020.nc
#~ -rw-r-s--- 1 ec407 hpc-ec407 2.4G Aug 30 23:20 TNZ-ERA5_daily_WSPEED2m_1981-2020.nc

#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Wind/TNZ-ERA5_daily_u10_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_u10-average_1981-2020 monmean "m.s-1" ${CLONE30SEC_FILE} &
#~ bash remapcon_arise_era5.sh ${INP_FOLDER} Variable_Wind/TNZ-ERA5_daily_u10_mean_1981-2020.nc ${OUT_FOLDER} senegal_era5-land_v10-average_1981-2020 monmean "m.s-1" ${CLONE30SEC_FILE} &

wait

set +x
