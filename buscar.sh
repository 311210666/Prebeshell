#!/bin/bash

echo 'Escribe el nombre completo del archivo'
read -r nombre
echo 'Ingresa la ruta absoluta del directorio donde quieres buscar'
read ruta
cd $ruta

if find . -maxdepth 1 -name "$nombre" -print -quit | grep -q . 
then
  echo "Archivo encontrado"
else 
  echo "Archivo no encontrado"
fi
