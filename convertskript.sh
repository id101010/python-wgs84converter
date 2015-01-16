#!/bin/bash

#
# Find all GPS NMEA Files and convert them to kml files using gpsbabel.
# 

for file in `find . -type f -name GPS_*.txt -exec which {} \;`
do
    echo "${file}.kml";
    gpsbabel -i nmea -f $file -o kml -F "${file}.kml"; 
done
