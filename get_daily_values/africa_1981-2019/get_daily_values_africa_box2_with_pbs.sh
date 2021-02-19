#!/bin/bash

#PBS -q express -P exp-00044

#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=16:mem=62gb

#PBS -N get_daily_box_2


# load software
. /rds/general/user/esutanud/home/load_all_default.sh
 

MAIN_HOURLY_SOURCE_DIR="/rds/general/user/esutanud/projects/arise/live/Africa/Africa-box2/"
OUTPUT_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_1981-2019/africa-box2/daily_before_remapcon/"

# goto the working directory
cd /rds/general/user/esutanud/home/github/edwinkost/process_era5-land/get_daily_values/africa_1981-2019/

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
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1991
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1992
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1993
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1994
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1995
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1996
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1997
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1998
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 1999
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2000
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2001
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2002
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2003
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2004
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2005
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2006
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2007
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2008
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2009
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2010
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2011
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2012
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2013
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2014
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2015
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2016
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2017
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2018
bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2019


