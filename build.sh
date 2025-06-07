#!/bin/bash
# Combina todos los archivos Markdown del repositorio en un solo documento.
# Uso: ./build.sh [salida]
# Si no se especifica [salida], se generará 'libro.pdf'.

set -e

OUTPUT=${1:-libro.pdf}

# Encontrar todos los archivos .md y ordenarlos alfabéticamente
FILES=$(find . -name "*.md" | sort)

pandoc $FILES -s -o "$OUTPUT"

echo "Documento generado: $OUTPUT"

