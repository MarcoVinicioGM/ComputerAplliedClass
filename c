#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Este script debe ser ejecutado como root"
    exit 1
fi
echo "El sistema se reiniciará en 1 minuto"
sleep 60
shutdown -r now

