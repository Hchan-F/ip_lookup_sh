#!/bin/bash
continuer=true

while [ "$continuer" = true ]; do
    echo "Entrez un nom de domaine (ex : google.com) : "
    read nom_domaine
    ip=$(dig +short $nom_domaine | head -n 1)
    echo "L'adresse IP est : $ip"
    echo "$(date) : $nom_domaine ->  $ip" >> logs_ip.txt
    echo "Informations enregistrées dans logs_ip.txt"
    echo "Voulez-vous ajouter un autre nom de domaine (o/n)"
    read reponse
        if [ "$reponse" = "o" ]; then
           echo "Très bien, on continue."
        else
          continuer=false 
          echo "Alors on s'arrete là."
       fi
done
