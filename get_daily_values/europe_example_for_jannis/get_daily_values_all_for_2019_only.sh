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

bash get_daily_values_all.sh ${MAIN_HOURLY_SOURCE_DIR} ${OUTPUT_FOLDER} 2019

