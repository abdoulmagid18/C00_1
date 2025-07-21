#!/bin/bash

dossier=$1
nb_fichiers=$(ls "$dossier" | wc -l)
echo "Le dossier $dossier contient $nb_fichiers élément(s)."
