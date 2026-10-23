IP Lookup Script (Bash)

Script Bash permettant d’effectuer des résolutions DNS et d’enregistrer les résultats dans un fichier journal.

Fonctionnement

Le script permet de :

* Saisir un nom de domaine.
* Rechercher son adresse IPv4 à l’aide de dig.
* Afficher l’adresse obtenue.
* Enregistrer le domaine, l’adresse IPv4 et la date dans logs_ip.txt.
* Effectuer plusieurs recherches successives grâce à une boucle interactive.
* Signaler lorsqu’aucune adresse IPv4 n’est trouvée.

Prérequis

* Un environnement Linux avec Bash.
* L’utilitaire dig installé.
* Un accès à un serveur DNS.

Exécution
chmod +x ip_lookup.sh
./ip_lookup.sh
Adapter le nom du fichier si nécessaire.

Objectif pédagogique

Ce projet a été réalisé dans le cadre de mon apprentissage de Bash et des réseaux informatiques.

Notions travaillées :

* Résolution DNS et enregistrements de type A
* Variables et substitution de commande
* Conditions et boucles Bash
* Saisie utilisateur
* Redirection de sortie vers un fichier journal

Limites

Ce script constitue un exercice pédagogique. Il ne gère pas l’ensemble des erreurs possibles lors d’une requête DNS et ne réalise pas de validation complète des noms de domaine.

Améliorations envisagées

* Ajout d’une option pour consulter l’historique des recherches.
* Gestion plus détaillée des erreurs DNS.
* Création d’un menu interactif.
