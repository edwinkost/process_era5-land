
# do not forget to load the modules required



MAIN_HOURLY_SOURCE_DIR="/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly/"
OUTPUT_FOLDER="/scratch/depfg/sutan101/meteo_arise/europe_example/daily_before_remapcon/"

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

# Please extend
