#!/bin/bash
# Script: sotelo_clasif_animales.sh

if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo_Lista_Animales.txt>"
    exit 1
fi

LISTA="$1"
IFS=$'\n'
RUTA_BASE="/tmp/animales"
LOG_FILE="/tmp/animales.txt"

rm -rf "$RUTA_BASE"
mkdir -p "$RUTA_BASE/tierra/mamiferos" "$RUTA_BASE/tierra/oviparos" "$RUTA_BASE/agua"
rm -f "$LOG_FILE"


for linea in $(cat "$LISTA"); do
    nombre=$(echo "$linea" | cut -d':' -f1)
    tipo=$(echo "$linea" | cut -d':' -f2)
    codigo=$(echo "$linea" | cut -d':' -f3)

    case "$codigo" in
        TM)
            carpeta="$RUTA_BASE/tierra/mamiferos"
            ;;
        TO)
            carpeta="$RUTA_BASE/tierra/oviparos"
            ;;
        AG)
            carpeta="$RUTA_BASE/agua"
            ;;
        *)
            echo "Código desconocido para $nombre"
            continue
            ;;
    esac

    linea_out="$nombre:$tipo:$codigo"

    echo "$linea_out" >> "$LOG_FILE"
    echo "$linea_out" > "$carpeta/$nombre.txt"
done

echo "Clasificación completa. Archivos generados en $RUTA_BASE y log en $LOG_FILE"
