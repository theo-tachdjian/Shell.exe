if [ $2 == "+" ]
then
	echo "Résultat = $(expr $1 + $3)"
elif [ $2 == "-" ]
then
	echo "Résultat = $(expr $1 - $3)"
elif [ $2 == "x" ]
then
	echo "Résultat = $(expr $1 \* $3)"
elif [ $2 == "/" ]
then
	echo "Résultat = $(expr $1 / $3)"
else
	echo "Erreur"
fi
