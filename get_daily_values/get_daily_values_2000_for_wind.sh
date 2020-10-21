
set -x

YEAR=2017
YEAR_PLUS_1=$(( YEAR + 1 ))

OUTPUT_FOLDER="/scratch/depfg/sutan101/test_arise_meteo_europe/daily_before_remapcon/"
mkdir -p ${OUTPUT_FOLDER}
cd ${OUTPUT_FOLDER}

MAIN_HOURLY_SOURCE_DIR="/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly/"

#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$ ls -lah Variable_Wind/*2000*
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 19:33 Variable_Wind/ERA5-Land_10u10v_200001.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.3G Oct 16 19:48 Variable_Wind/ERA5-Land_10u10v_200002.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 20:02 Variable_Wind/ERA5-Land_10u10v_200003.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.3G Oct 16 20:17 Variable_Wind/ERA5-Land_10u10v_200004.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 20:31 Variable_Wind/ERA5-Land_10u10v_200005.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.3G Oct 16 20:46 Variable_Wind/ERA5-Land_10u10v_200006.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 21:01 Variable_Wind/ERA5-Land_10u10v_200007.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 21:15 Variable_Wind/ERA5-Land_10u10v_200008.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.3G Oct 16 21:29 Variable_Wind/ERA5-Land_10u10v_200009.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 21:43 Variable_Wind/ERA5-Land_10u10v_200010.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.3G Oct 16 21:57 Variable_Wind/ERA5-Land_10u10v_200011.nc
#~ -rw-r--r-- 1 hoch0001 depfg 2.4G Oct 16 22:11 Variable_Wind/ERA5-Land_10u10v_200012.nc
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$ ncdump -h Variable_Wind/ERA5-Land_10u10v_200001.nc
#~ netcdf ERA5-Land_10u10v_200001 {
#~ dimensions:
        #~ longitude = 1061 ;
        #~ latitude = 801 ;
        #~ time = 744 ;
#~ variables:
        #~ float longitude(longitude) ;
                #~ longitude:units = "degrees_east" ;
                #~ longitude:long_name = "longitude" ;
        #~ float latitude(latitude) ;
                #~ latitude:units = "degrees_north" ;
                #~ latitude:long_name = "latitude" ;
        #~ int time(time) ;
                #~ time:units = "hours since 1900-01-01 00:00:00.0" ;
                #~ time:long_name = "time" ;
                #~ time:calendar = "gregorian" ;
        #~ short u10(time, latitude, longitude) ;
                #~ u10:scale_factor = 0.000665902840398635 ;
                #~ u10:add_offset = 5.93637359154855 ;
                #~ u10:_FillValue = -32767s ;
                #~ u10:missing_value = -32767s ;
                #~ u10:units = "m s**-1" ;
                #~ u10:long_name = "10 metre U wind component" ;
        #~ short v10(time, latitude, longitude) ;
                #~ v10:scale_factor = 0.000712566187422019 ;
                #~ v10:add_offset = 0.00739804277298821 ;
                #~ v10:_FillValue = -32767s ;
                #~ v10:missing_value = -32767s ;
                #~ v10:units = "m s**-1" ;
                #~ v10:long_name = "10 metre V wind component" ;

#~ // global attributes:
                #~ :Conventions = "CF-1.6" ;
                #~ :history = "2020-10-16 17:30:28 GMT by grib_to_netcdf-2.16.0: /opt/ecmwf/eccodes/bin/grib_to_netcdf -S param -o /cache/data3/adaptor.mars.internal-1602868794.1346717-30509-16-627d7f99-c4cf-4e0d-bbe7-c2711994de05.nc /cache/tmp/627d7f99-c4cf-4e0d-bbe7-c2711994de05-adaptor.mars.internal-1602868794.1353724-30509-6-tmp.grib" ;
#~ }
#~ (pcrglobwb_python3) sutan101@gpu040.cluster:/scratch/depfg/hoch0001/ARISE/ERA5_Land/_data/hourly$


# steps:
# - mergetime hourly u 
# - mergetime hourly v
# - cat hourly u and v 
# - calculate hourly wind speed
# - calculate daily value

# calculate hourly wind speed (with expression)
HOURLY_SOURCE_DIR=${MAIN_HOURLY_SOURCE_DIR}/Variable_Wind
DAILY_OUTPUT_FILE=${OUTPUT_FOLDER}/europe_era5-land_daily_wind10m-avg_${YEAR}.nc
cdo -L -setunit,"m.s-1" -daymean -expr,'wind_speed_10m = sqrt(u10*u10 + v10*v10)' -selyear,${YEAR} -shifttime,-25min -mergetime ${HOURLY_SOURCE_DIR}/*${YEAR}*.nc ${HOURLY_SOURCE_DIR}/*${YEAR_PLUS_1}01.nc ${DAILY_OUTPUT_FILE} &

wait

set +x
