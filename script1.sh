#!/bin/bash
maxLineas=`cat nombres.txt | wc -l`

for i in `seq 1 $maxLineas`; do
   nombre=`cat nombres.txt | head -$i | tail -1`
   echo $nombre
   for j in `seq 1 $1`; do
     echo ./$nombre/personal$j
   done

done

echo ""
echo "Fin del fichero"
