ligne=$(cat /var/log/auth.log | grep "opened" | wc -l)
time=$(date +"%d-%m-%y-%H:%M")
fichier="number_connection_${time}"

cd /home/theo/Shell.exe/job8/

echo $ligne > $fichier

tar -cf "./Backup/backup_${time}.tar.gz" $fichier
