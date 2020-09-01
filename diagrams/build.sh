#!/bin/bash

for drawio_name in $(dir *.drawio)
do
    name_without_ext="${drawio_name%.*}"
    outfile=./svgs/${name_without_ext}.svg
    echo $outfile
    draw.io -o $outfile -x $drawio_name
done
