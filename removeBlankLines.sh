#!/bin/bash
#
#   Find all .csv files in subfolders and remove blanks
# 

filename='zugdaten.csv'

for file in `find . -type f -name 'zug.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}
        
    sed '/^,/d' ${file} > ${outfile}
done
