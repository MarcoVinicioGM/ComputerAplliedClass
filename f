#!/bin/bash

comparar_numeros() {
    if [ $1 -eq $2 ]; then
        echo "Son iguales"
    elif [ $1 -gt $2 ]; then
        echo "El primer numero ($1) es mayor que el segundo ($2)"
    else
        echo "El segundo numero ($2) es mayor que el primero ($1)"
    fi
}

echo "Ingrese el primer numero:"
read num1
echo "Ingrese el segundo numero:"
read num2

if [[ "$num1" =~ ^[0-9]+$ ]] && [[ "$num2" =~ ^[0-9]+$ ]]; then
    comparar_numeros $num1 $num2
else
    echo "Error: Debe ingresar numeros enteros"
fi

