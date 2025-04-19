#!/bin/bash

# Definir mensaje de commit como primer argumento, o usar uno por defecto
commitMessage="${1:-Actualización automática}"

# Cambiar al directorio del repositorio (ajusta la ruta)
cd . || {
  echo "Error: No se pudo acceder al directorio del repositorio"
  exit 1
}

# Agregar archivos, hacer commit y hacer push
git add .
git commit -m "$commitMessage"
git push origin main

echo "¡Cambios enviados correctamente!"
