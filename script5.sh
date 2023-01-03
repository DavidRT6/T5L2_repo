#!/bin/bash
maxLineas=`cat listado.txt | wc -l`
let procesosLinux=0
let procesosWindows=0

echo
echo "Los usuarios que tienen Linux son:"
for i in `seq 1 $maxLineas`; do
usuario=`cat listado.txt | awk '{print $1}' | head -$i | tail -1`
so=`cat listado.txt | awk '{print $2}' | head -$i | tail -1`
if [ $so = 'Linux' ]
then
numProcesos=`cat listado.txt | awk '{print $3}' | head -$i | tail -1`
echo $usuario
procesosLinux=$(($procesosLinux+$numProcesos))
fi
done

echo
echo "Los usuarios que tienen Windows son:"
for i in `seq 1 $maxLineas`; do
usuario=`cat listado.txt | awk '{print $1}' | head -$i | tail -1`
so=`cat listado.txt | awk '{print $2}' | head -$i | tail -1`
if [ $so = 'Windows' ]
then
numProcesos=`cat listado.txt | awk '{print $3}' | head -$i | tail -1`
echo $usuario
procesosWindows=$(($procesosWindows+$numProcesos))
fi
done

echo
echo "En el sistema Linux se están realizando: $procesosLinux procesos."
echo "En el sistema Windows se están realizando: $procesosWindows procesos."
