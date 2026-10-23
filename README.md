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
