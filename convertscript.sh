#!/bin/bash
#
#   Find all gps files and convert them to a usable format using gsc.py
#

filename='converted_track.csv'
searchpath='Data/'

for file in `find ${searchpath} -type f -name 'example_track.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}

    #echo ${file}
    #echo ${outfile}

    python2 gsc.py -c ${file} ${outfile}
done
