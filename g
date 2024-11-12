!/bin/bash

comparar_numeros() {
    if [ $1 -eq $2 ]; then
        echo "Los números son iguales"
    elif [ $1 -gt $2 ]; then
        echo "El primer número ($1) es mayor que el segundo ($2)"
    else
        echo "El segundo número ($2) es mayor que el primero ($1)"
    fi
}

if [ $# -ne 2 ]; then
    echo "Error: Se requieren 2 parámetros"
    echo "Uso: $0 numero1 numero2"
    exit 1
fi

