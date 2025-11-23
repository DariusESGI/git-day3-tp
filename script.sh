#!/bin/bash

create() {
    echo "Création du fichier $1"
    touch "$1"
}

update() {
    echo "Mise à jour du fichier $1"
    echo "Mise à jour effectuée" >> "$1"
}

delete() {
    echo "Suppression du fichier $1"
    rm -f "$1"
}

case "$1" in
    create) create "$2" ;;
    update) update "$2" ;;
    delete) delete "$2" ;;
    *)
        echo "Usage : $0 {create|update|delete} fichier"
        ;;
esac
"# Version LTS" 
