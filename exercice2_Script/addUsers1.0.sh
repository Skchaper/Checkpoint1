#! /bin/bash

# Script pour créer nouvel utilisateur

# Vérification de la présence d'arguments

if [ $# = 0 ]
then
	echo "Il manque les noms d'utilisateurs en argument - Fin du script"
	exit
else

# Vérification existence dans le système de l'utilisateur

	id -u $*

	if [ $? = 0 ]
	then
		echo "L'(es) utilisateur(s) $* existe(nt) déjà
	else
		while [ $1 != "0" ]
		do
			echo "Tentative de création de l'utilisateur $1"
			echo""
			sleep 1s
			useradd$1
				# Vérification de la création
				if [ $? = 0 ]
				then
					echo "L'utilisateur $1 a bien été ajouté à la liste"
					echo ""
				else
					echo "Erreur à la création de l'utilisateur $1"
					echo ""
				fi
		shift
		done
	fi
fi
