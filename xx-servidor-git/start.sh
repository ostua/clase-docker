cd /home/git/lab6
echo "### Lanzando APACHE2..."
mv hooks/post-update.sample hooks/post-update
git update-server-info
service apache2 start
echo "### Lanzando SSH Daemon..."
service ssh start
echo "### Lanzando GIT Daemon..."
touch git-daemon-export-ok
git daemon --base-path=/home/git /home/git & 
echo "### Pulsa ENTER para cerrar el contenedor..."
read
echo "### Cerrando contenedor..."
