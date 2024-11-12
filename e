!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Se requiere exactamente 1 parámetro"
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
        echo "Es un enlace simbólico"
    elif [ -b "$1" ]; then
        echo "Es un archivo de bloque"
    elif [ -c "$1" ]; then
        echo "Es un archivo de caracteres"
    elif [ -p "$1" ]; then
        echo "Es una tubería nombrada (FIFO)"
    elif [ -S "$1" ]; then
        echo "Es un socket"
    fi
else
    echo "El archivo no existe"
fi

