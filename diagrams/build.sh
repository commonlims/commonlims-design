#!/bin/bash

for drawio_name in $(dir *.drawio)
do
    name_without_ext="${drawio_name%.*}"
    outfile=./pngs/${name_without_ext}.png
    echo $outfile
    draw.io -o $outfile -x $drawio_name
done
