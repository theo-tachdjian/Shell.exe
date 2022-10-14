echo "mdp" | sudo -S ls -la

cd /home/theo/Shell.exe/job9/Shel_Userlist.csv



while IFS="," read -r colonne1 colonne2 colonne3 colonne4 colonne5

do
  echo "Id: $colonne1"
  echo "Prénom: $colonne2"
  echo "Nom: $colonne3"
  echo "MDP: $colonne4"
  echo "Rôle: $colonne5"
  echo ""

#sert à suppr le caractere invisible des rôles
colonne5="${colonne5//$'\r'/}"
if [[ $colonne5 == "User" ]]; then
	sudo useradd --non-unique --uid "$colonne1" --badnames -p "$colonne4" "$colonne2 $colonne3" 
elif [[ $colonne5 == "Admin" ]]; then
	sudo useradd --non-unique --uid "$colonne1" -G sudo --badnames -p "colonne4" "$colonne2 $colonne3"
else
	echo "veuillez entrer un rôle à l'utilisateur"
fi

done < <(tail -n +2 Shell_Userlist.csv)

