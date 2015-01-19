#!/bin/bash

#
# Find all GPS NMEA Files and convert them to kml files using gpsbabel.
# 

filename='zugdaten.csv'

for file in `find . -type f -name 'zug.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}
        
    sed '/^,/d' ${file} > ${outfile}
done
