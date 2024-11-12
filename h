#!/bin/bash

while true; do
    clear
    echo "Menu de opciones:"
    echo "1) Mostrar directorio actual"
    echo "2) Cambiar directorio"
    echo "3) Listar archivos del directorio actual"
    echo "4) Crear directorio"
    echo "5) Salir"
    echo -n "Seleccione una opción: "
    read opcion

    case $opcion in
        1)
            pwd
            ;;
        2)
            echo -n "Ingrese el nombre del directorio: "
            read dir
            if cd "$dir" 2>/dev/null; then
                echo "Directorio cambiado exitosamente"
            else
                echo "Error: No se pudo cambiar al directorio"
            fi
            ;;
        3)
            find . -maxdepth 1 -type f
            ;;
        4)
            echo -n "Ingrese el nombre del nuevo directorio: "
            read newdir
            if mkdir "$newdir" 2>/dev/null; then
                echo "Directorio creado exitosamente"
            else
                echo "Error: No se pudo crear el directorio"
            fi
            ;;
        5)
            echo "¡Hasta luego, $USER!"
            exit 0
            ;;
        *)
            echo "Opcion incorrecta"
            ;;
    esac
    echo -n "Presione Enter para continuar..."
    read
done


