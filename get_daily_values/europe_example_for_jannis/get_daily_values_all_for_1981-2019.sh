#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8
#~ #SBATCH -t 240:00:00
#SBATCH -p defq

#SBATCH -J get_daily_values

#~ #SBATCH --exclusive

# do not forget to load the module required (i.e. cdo)
. /quanta1/home/sutan101/load_my_miniconda_and_my_default_env.sh

# set the folder where you want to store daily files (note that these daily files will still need further processing)
OUTPUT_FOLDER="/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/"

# folder where you stored hourly files (downloaded files from the copernicus)
MAIN_HOURLY_SOURCE_DIR="/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly/"

#~ sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$ ls -lah
#~ total 4.0K
#~ drwxr-xr-x 8 hoch0001 depfg   6 Oct 14 22:30 .
#~ drwxr-xr-x 3 hoch0001 depfg   1 Oct 14 11:14 ..
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:10 Variable_Falb
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:03 Variable_Snsr
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:09 Variable_Spre
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 19 03:09 Variable_Temp
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 18 21:12 Variable_Tpre
#~ drwxr-xr-x 2 hoch0001 depfg 468 Oct 19 03:11 Variable_Wind

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

