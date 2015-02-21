#!/bin/bash
#
#   Find all .csv logger files in subfolders and remove blank lines
# 

filename='force.csv'

for file in `find . -type f -name 'zug.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}
        
    sed '/^,/d' ${file} > ${outfile}
done
