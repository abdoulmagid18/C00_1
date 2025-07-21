#!/bin/bash

# Vérifier si un argument est passé
if [ $# -eq 0 ]; then
  echo "Usage: $0 <nom_du_dossier>"
  exit 1
fi

folder="$1"

# Vérifier si le dossier existe
if [ ! -d "$folder" ]; then
  echo "Le dossier $folder n'existe pas."
  exit 1
fi

# Compter le nombre de fichiers (non dossiers) dans le dossier
count=$(find "$folder" -maxdepth 1 -type f | wc -l)

echo "Le dossier $folder contient $count fichiers."
