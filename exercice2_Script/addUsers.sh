#! /bin/bash

# Script pour la création de nouveaux utilisateurs
# Après les problèmes rencontrés dans la version addUsers1.0.sh, mise en place d'une fonction
# La fonction doit être initiée avant son appel

user_add () {

while [ $# -ne "0" ]
do
	# Vérification existence utilisateur dans le système
	id -u $1 > /dev/nulle
	if [ $? = "1" ]
	then
		echo "Tentative de création de l'utilisateur $1"
		useradd $1
		# Vérification création utilisateur
		id -u $1 > /dev/null
		if [ $? = "0" ]
		then
			echo "L'utilisateur $1 a bien été ajouté à la liste"
			echo ""
		else
			echo "Erreur à la création de l'utilisateur"
			echo ""
		fi
	else
		"L'utilisateur $1 existe déjà"

	fi
	shift
done
}

# Vérification de la présence d'arguments

if [ $# = 0 ]
then
	echo "Il manque le(s) nom(s) d'utilisateur(s) en argument - Fin du script"
	exit
else
	echo "Création de(s) l'utilisateur(s) suivant(s) : $*"
	user_add $*
fi
