#!/bin/bash

# Vérifier si un argument (le nom du dossier) est fourni
if [ -z "$1" ]; then
  echo "Veuillez spécifier le nom d'un dossier."
  exit 1
fi

# Vérifier si le dossier existe
if [ ! -d "$1" ]; then
  echo "Le dossier $1 n'existe pas."
  exit 1
fi

# Compter les fichiers (non-récursif, sans compter les dossiers)
nb_files=$(find "$1" -maxdepth 1 -type f | wc -l)

echo "Le dossier $1 contient $nb_files fichier(s)."
