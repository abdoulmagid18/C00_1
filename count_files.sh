#!/bin/bash

# Vérifie si un argument est passé
if [ -z "$1" ]; then
  echo "Usage : $0 nom_du_dossier"
  exit 1
fi

REPERTOIRE="$1"

# Vérifie que le dossier existe
if [ ! -d "$REPERTOIRE" ]; then
  echo "Erreur : Le dossier '$REPERTOIRE' n'existe pas."
  exit 1
fi

# Compte les fichiers en filtrant ls
NB_FICHIERS=$(ls -p "$REPERTOIRE" | grep -v / | wc -l)

# Affiche le résultat
echo "Le dossier $REPERTOIRE contient $NB_FICHIERS fichier(s)."
