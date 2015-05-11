#!/bin/bash
#
#   Find all gps files and convert them to a usable format using gsc.py
#

filename='example_track_ch1903.csv'
searchpath='./data/'

for file in `find ${searchpath} -type f -name 'example_track_wgs84.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}

    python2 util/gsc.py -c ${file} ${outfile}
done
