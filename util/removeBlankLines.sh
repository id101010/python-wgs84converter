#!/bin/bash
#
#   Find all .csv files in subfolders and remove blanks
# 

filename='data_noblank.csv'

for file in `find . -type f -name 'logger_file_with_blank_lines.csv'`
do
    folder=$(dirname ${file})
    outfile=${folder}/${filename}
        
    sed '/^,/d' ${file} > ${outfile}
done
