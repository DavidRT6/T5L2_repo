#!/bin/bash
echo
read -p "Introduce la ruta de los archivos .txt que quieres eliminar: " ruta

echo
echo "Los siguientes archivos han sido eliminados:"
find $ruta -name "*.txt"

listaArchivos=`find $ruta -name "*.txt"`

let archivosEliminados=0
for archivo in $listaArchivos; do
rm $archivo
archivosEliminados=$((archivosEliminados+1))
done

echo
echo "Se han eliminado: $archivosEliminados archivos"
