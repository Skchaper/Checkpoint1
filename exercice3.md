## Questions exercices 3 :

1. **Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux**

cat /etc/passwd

2. **Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?**

chmod 740 myfile

3. **Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?**

Ajouter-les fichiers pdf dans le même répertoire. Placer ce répertoire dans un autre dossier ignore lui-même placé à l’intérieur du répertoire ~/.config/git. Par défaut, Git ignore tous les fichiers et répertoires listés dans le fichier de configuration globale ~/.config/git/ignore.

4. **Quelles commandes git utiliser pour fusionner les branches main et test_valide ?**

git checkout main git merge test_valide

5. **Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :**

> Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :  
> - "Bonjour est-ce que ce clavier fonctionne bien ?"  
> - "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"  
> - "Même des tildes ~ ?"  
> - "Evidemment !"  

echo ''

6. **La commande jobs -l donne le résultat ci-dessous :**

> wilder@Ubuntu:~$ jobs -l
> [1]  37970 En cours d'exécution   gedit &
> [2]  37971 En cours d'exécution   xeyes &
> [3]- 37972 En cours d'exécution   sleep

**Quelle commande te permet de mettre en avant le processus gedit ?**

jobs -l | grep gedit

7. **Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.**

Matériels couche 2 : 
* Le pont (bridge) permet de relier des réseaux physiques différents.
* Le commutateur (switch) fonctionne comme un pont multiports et permet de relier plusieurs segments d'un réseau informatique entre eux.
Les deux sont des matériels réseaux actifs.

Matériel couche 3 :
* Le routeur permet d'assurer le routage des paquets entre différents réseaux pour déterminer le chemin qu'un paquet de données va emprunter.

8. **Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.**

cd : Set-Location
cp : Copy-Item
mkdir : New-Item
ls : Get-ChildItem

9. **Dans la trame ethernet, qu'est-ce que le payload ?**

Le payload est la charge utile de la trame ethernet. C'est un ensemble de données transportées. Lors de son émission, elle encapsule le PDU de la couche supérieure puis lors de sa réception, le PDU est transmis au protocole indiqué par l'EtherType.

10. **Pourquoi les classes IP sont remplacées par le CIDR ?**

L'objectif est de réduire le gaspillage d'adresses IP. Le CIDR permet de dimenssionner son réseau sur mesure en fournissant le nombre d'adresses IP requis.
