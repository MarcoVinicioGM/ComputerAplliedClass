# Clase de Informática Aplicada

## Ejemplos de Scripts

### Scripts Básicos
- Imprimir números del 1 al 5:

  ./a

- Mostrar fecha actual 10 veces:

  ./b
  Muestra la fecha actual 10 veces con intervalos de 2 segundos.


- Reinicio del sistema (requiere root):

  sudo ./c

### Scripts de Procesamiento de Texto
- Buscar palabra en archivo:

  ./d lorem /path/archivo_d

  Busca "lorem" en "archivo_d" e indica si se encontró.

- Verificador de tipo de archivo:

  ./e ruta/al/archivo_d
  
  Determina si la ruta es un archivo regular, directorio, enlace simbólico o archivo de bloque.

- Comparación de números:

  ./f

  Script interactivo que compara dos números ingresados por el usuario.

### Scripts de Gestión del Sistema
- Menú de sistema de archivos:
  
  ./h
  

### Scripts de Análisis de Texto
- Verificador de palíndromos:
  
  ./i palabra
  
  Comprueba si la palabra proporcionada es un palíndromo.

## Archivos de Prueba
- archivo_d: Archivo de texto de ejemplo para probar el script d.sh

## Configuración
1. Hacer ejecutables los scripts:
```bash
chmod +x *
```
