
#~ esutanud@login-7:/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box1$ ls -lah Variable_*/*199101*
#~ -rw-r--r-- 1 ec407 rds-000549 638M Oct 14 09:43 Variable_Falb/ERA5-Land_Fa_199101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 638M Oct 14 09:30 Variable_Snsr/ERA5-Land_Ssr_199101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 638M Oct 14 09:56 Variable_Spre/ERA5-Land_Sp_199101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 1.3G Oct 14 09:30 Variable_Temp/ERA5-Land_Temp_199101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 638M Oct 14 09:50 Variable_Tpre/ERA5-Land_Tp_199101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 1.3G Oct 14 09:52 Variable_Wind/ERA5-Land_10u10v_199101.nc
#~ esutanud@login-7:/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box1$ ls -lah Variable_*/*198101*
#~ -rw-r--r-- 1 ec407 rds-000549 637M Oct 14 09:55 Variable_Falb/ERA5-Land_Fa_198101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 637M Oct 14 09:45 Variable_Snsr/ERA5-Land_Ssr_198101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 637M Oct 14 09:38 Variable_Spre/ERA5-Land_Sp_198101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 1.3G Oct 14 09:26 Variable_Temp/ERA5-Land_Temp_198101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 637M Oct 14 09:49 Variable_Tpre/ERA5-Land_Tp_198101.nc
#~ -rw-r--r-- 1 ec407 rds-000549 1.3G Oct 14 09:43 Variable_Wind/ERA5-Land_10u10v_198101.nc

# box 1
#####################

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box1/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1983 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1984 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1985 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1986
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1987 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1988 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1989 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1990 

#~ Please extend to other years!


# box 2
#####################

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box2/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box2/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1983 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1984 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1985 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1986
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1987 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1988 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1989 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1990 

#~ Please extend to other years!


# box 3
#####################

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box3/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box3/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1983 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1984 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1985 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1986
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1987 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1988 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1989 
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1990 

#~ Please extend to other years!

