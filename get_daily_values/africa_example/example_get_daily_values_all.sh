
MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box1/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box2/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box2/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box3/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box3/daily_before_remapcon/"

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1981
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1982 
