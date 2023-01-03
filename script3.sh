#!/bin/bash
echo
maxLineas=`cat precipitaciones.txt | wc -l`

echo "Los días que no llovieron fueron:"
for i in `seq 1 $maxLineas`; do
let dia=`cat precipitaciones.txt | awk '{print $1}' | head -$i | tail -1`
let precipitacion=`cat precipitaciones.txt | awk '{print $2}' | head -$i | tail -1`
cont=0
semana=0

	for i in Lunes Martes Miércoles Jueves Viernes Sábado Domingo; do
	cont=$((cont+1))
		while [ $dia -gt 7 ]; do
		dia=$(($dia-7))
		semana=$(($semana+7))
		done

		if [ $precipitacion = 0 ] && [ $cont = $dia ]
		then
		dia=$(($dia+$semana))
		echo "$i $dia"
		fi
	done
done
