#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8
#~ #SBATCH -t 240:00:00
#SBATCH -p defq

#SBATCH -J remapcon

#~ #SBATCH --exclusive

# do not forget to load the module required (i.e. cdo)
. /quanta1/home/sutan101/load_my_miniconda_and_my_default_env.sh


set -x

# set the folder where you want to store the processed files (after remapcon) 
OUT_FOLDER="/scratch/depfg/sutan101/meteo_europe_era5land/daily_after_remapcon/merged_1981-2019/"

# set the folder where you stored daily files
INP_FOLDER="/scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019/"


#~ INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon/"

#~ INP_FOLDER="/scratch-shared/edwinhs/meteo_arise/tanzania/source_icl_downloaded_2020-04-07/era5-land/"
#~ INP_FOLDER="/rds/general/user/ec407/ephemeral/Senegal/ForEdwin/"
#~ INP_FOLDER="/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon/"

#~ esutanud@login-7:/rds/general/user/esutanud/ephemeral/meteo_arise/africa_example/Africa-box1/daily_before_remapcon$ ls -lah *

#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:01 era5-land_daily_total-preci_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-average_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-maximum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_d2m-minimum_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_t2m-average_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:01 era5-land_daily_t2m-maximum_1981.nc
#~ -rw------- 1 esutanud hpc-ec407 682M Oct 23 02:00 era5-land_daily_t2m-minimum_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:01 era5-land_daily_spressu-avg_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:00 era5-land_daily_fal-average_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 1.2G Oct 23 02:00 era5-land_daily_total-ssrad_1981.nc

#~ -rw------- 1 esutanud hpc-ec407 672M Oct 23 02:01 era5-land_daily_wind10m-avg_1981.nc




# making output folder 
mkdir -p ${OUT_FOLDER}


# making the clone map at 30sec
# - for europe
CLONE30SEC_FILE=${OUT_FOLDER}/clone_europe_30sec.map
mapattr -s -R 4800 -C 6360 -B -P yb2t -x -11 -y 73 -l 0.008333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333 ${CLONE30SEC_FILE}
#~ #
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/data/pcrglobwb_input_arise/develop/europe_30sec/cloneMaps/version_2020-11-XX$ gdalinfo clone_europe_30sec.map
#~ Driver: PCRaster/PCRaster Raster File
#~ Files: clone_europe_30sec.map
#~ Size is 6360, 4800
#~ Origin = (-11.000000000000000,73.000000000000000)
#~ Pixel Size = (0.008333333333333,-0.008333333333333)
#~ Metadata:
  #~ PCRASTER_VALUESCALE=VS_BOOLEAN
#~ Corner Coordinates:
#~ Upper Left  ( -11.0000000,  73.0000000)
#~ Lower Left  ( -11.0000000,  33.0000000)
#~ Upper Right (  42.0000000,  73.0000000)
#~ Lower Right (  42.0000000,  33.0000000)
#~ Center      (  15.5000000,  53.0000000)
#~ Band 1 Block=6360x1 Type=Byte, ColorInterp=Undefined
  #~ Min=1.000 Max=1.000
  #~ NoData Value=255
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/sutan101/data/pcrglobwb_input_arise/develop/europe_30sec/cloneMaps/version_2020-11-XX$ mapattr -p clone_europe_30sec.map
#~ mapattr version: 4.3.0 (linux/x86_64)
#~ attributes  clone_europe_30sec.map
#~ rows        4800
#~ columns     6360
#~ cell_length 0.00833333
#~ data_type   boolean
#~ cell_repr   small
#~ projection  yb2t
#~ angle(deg)  0
#~ xUL         -11
#~ yUL         73
#~ min_val     1
#~ max_val     1
#~ version     2
#~ file_id     0
#~ native      y
#~ attr_tab    n
#~ #
#~ #
#~ #
#~ # - for africa
#~ CLONE30SEC_FILE=${OUT_FOLDER}/clone_africa_30sec.map
#~ mapattr -s -R 9000 -C 8520 -B -P yb2t -x -19 -y 39 -l 0.008333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333 ${CLONE30SEC_FILE}
#~ africa bounding box (complete)
#~ xmin, xmax = -19, 52
#~ ymin, ymax = -36, 39
#~ ncols for 30sec	= 8520
#~ nrows for 30sec	= 9000


bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_total-preci_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_total-preci_1981-2019 monsum  "m.month-1"   ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-average_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_d2m-average_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-maximum_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_d2m-maximum_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_d2m-minimum_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_d2m-minimum_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-average_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_t2m-average_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-maximum_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_t2m-maximum_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_t2m-minimum_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_t2m-minimum_1981-2019 monmean "K"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_spressu-avg_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_spressu-avg_1981-2019 monmean "1"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_fal-average_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_fal-average_1981-2019 monmean "1"           ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_total-ssrad_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_total-ssrad_1981-2019 monmean "J.m-2.day-1" ${CLONE30SEC_FILE} &
bash remapcon_arise_era5.sh ${INP_FOLDER} era5-land_daily_wind10m-avg_1981-2019.nc ${OUT_FOLDER} europe_era5-land_daily_wind10m-avg_1981-2019 monmean "m.s-1"       ${CLONE30SEC_FILE} &

wait


#~ sutan101@gpu038.cluster:/quanta1/home/sutan101/github/edwinkost/process_era5-land/remapcon_arise/europe_1981-2019_only_5-30arcmin$ ls -lah /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//*
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_d2m-average_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_d2m-maximum_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_d2m-minimum_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_fal-average_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_spressu-avg_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_t2m-average_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:07 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_t2m-maximum_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_t2m-minimum_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_total-preci_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_total-ssrad_1981-2019.nc
#~ -r--r--r-- 1 sutan101 depfg 23G Mar  4 14:05 /scratch/depfg/sutan101/meteo_europe_era5land/daily_before_remapcon/merged_1981-2019//era5-land_daily_wind10m-avg_1981-2019.nc


set +x
