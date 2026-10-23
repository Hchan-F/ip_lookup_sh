#!/bin/bash

continuer=true

while [ "$continuer" = true ]; do
    echo "Entrez un nom de domaine (ex : google.com) :"
    read -r nom_domaine

    ip=$(dig +short "$nom_domaine" A | grep -m 1 -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$')

    if [ -n "$ip" ]; then
        echo "L'adresse IPv4 est : $ip"

        echo "$(date) : $nom_domaine -> $ip" >> logs_ip.txt
        echo "Informations enregistrées dans logs_ip.txt"
    else
        echo "Aucune adresse IPv4 trouvée pour $nom_domaine."
    fi

    echo "Voulez-vous ajouter un autre nom de domaine ? (o/n)"
    read -r reponse

    if [ "$reponse" = "o" ]; then
        echo "Très bien, on continue."
    else
        continuer=false
        echo "Alors on s'arrête là."
    fi
done
