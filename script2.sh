#!/bin/bash
maxLineas=`cat precipitaciones.txt | wc -l`
let suma=0

for i in `seq 1 $maxLineas`; do
let precipitacion=`cat precipitaciones.txt | awk '{print $2}' | head -$i | tail -1`
suma=$(($suma+$precipitacion))
done

let media=$suma/$maxLineas

echo
echo "La media de las precipitaciones es $media"
