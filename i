#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Error: Se requiere exactamente 1 parametro"
    echo "Uso: $0 palabra"
    exit 1
fi

# Convertir a lowercase (minimina?) y eliminar espacios
palabra=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr -d ' ')
reversa=$(echo "$palabra" | rev)

if [ "$palabra" = "$reversa" ]; then
    echo "Es un palindromo"
else
    echo "No es un palindromo"
fi

