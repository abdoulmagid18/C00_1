#!/bin/bash

dossier=$1

# Vérifier si l'argument est fourni
if [ -z "$dossier" ]; then
  echo "Usage: $0 <nom_du_dossier>"
  exit 1
fi

# Vérifier si le dossier existe
if [ ! -d "$dossier" ]; then
  echo "Le dossier '$dossier' n'existe pas."
  exit 1
fi

# Compter tous les éléments (fichiers et dossiers, y compris les cachés) sans descendre dans les sous-dossiers
nb_fichiers=$(find "$dossier" -mindepth 1 -maxdepth 1 | wc -l)
echo "Le dossier $dossier contient $nb_fichiers élément(s)."
