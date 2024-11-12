#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Se necesitan 2 parametros"
    echo "Uso: $0 palabra archivo"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "Error: No existe"
    exit 1
fi

if grep -q "$1" "$2"; then
    echo "Palabra encontrada"
else
    echo "Palabra no encontrada"
fi


