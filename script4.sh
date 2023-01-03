#!/bin/bash
let sumaPares=0
let sumaImpares=0
maxLineas=`cat numeros.txt | wc -l`

echo
echo "Lista de números pares:"
for i in `seq 1 $maxLineas`; do
numero=`cat numeros.txt | head -$i | tail -1`
if [ $(($numero%2)) = 0 ]
then
echo $numero
sumaPares=$(($sumaPares+$numero))
fi
done
echo "La suma de todos los números pares es: $sumaPares"

echo
echo "Lista de números impares:"
for i in `seq 1 $maxLineas`; do
numero=`cat numeros.txt | head -$i | tail -1`
if [ $(($numero%2)) != 0 ]
then
echo $numero
sumaImpares=$(($sumaImpares+$numero))
fi
done
echo "La suma de todos los números impares es: $sumaImpares"

