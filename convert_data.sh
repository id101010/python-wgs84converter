#!/bin/bash
#
#   Find all gps files and convert them to the ch1903 format using gsc.py
#

filename='converted_track.csv'
searchpath='data/'

for file in `find ${searchpath} -type f -name 'example_track.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}

    #echo ${file}
    #echo ${outfile}

    python2 ./util/gsc.py -c ${file} ${outfile}
done
