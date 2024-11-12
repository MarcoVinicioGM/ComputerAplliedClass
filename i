!/bin/bash


if [ $# -ne 1 ]; then
    echo "Error: Se requiere exactamente 1 parámetro"
    echo "Uso: $0 palabra"
    exit 1
fi

# Convertir a minúsculas y eliminar espacios
palabra=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr -d ' ')
reversa=$(echo "$palabra" | rev)

if [ "$palabra" = "$reversa" ]; then
    echo "Es un palíndromo"
else
    echo "No es un palíndromo"
fi

