#!/bin/bash

# Vérifier si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <dossier>"
    exit 1
fi

dossier=$1

# Vérifier si le dossier existe
if [ ! -d "$dossier" ]; then
    echo "Erreur: Le dossier '$dossier' n'existe pas."
    exit 1
fi

# Compter les fichiers (en excluant les dossiers)
nb_fichiers=$(ls -l "$dossier" | grep -v '^d' | wc -l)
# On soustrait 1 pour enlever la ligne totale du ls -l
nb_fichiers=$((nb_fichiers - 1))

# Afficher le résultat
echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
