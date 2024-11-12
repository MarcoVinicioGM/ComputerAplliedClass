#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Se requiere 1 parametro"
    echo "Uso: $0 ruta_archivo"
    exit 1
fi

if [ -e "$1" ]; then
    echo "El archivo existe"
    if [ -f "$1" ]; then
        echo "Es un archivo regular"
    elif [ -d "$1" ]; then
        echo "Es un directorio"
    elif [ -L "$1" ]; then
        echo "Es un enlace simbolico"
    elif [ -b "$1" ]; then
        echo "Es un archivo de bloque"
    fi
else
    echo "El archivo no existe"
fi

