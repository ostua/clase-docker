# FROM: Usa como base esta imagen
FROM ubuntu:18.04
# RUN: Actualiza lista paquete e instala los necesarios
RUN apt-get update
RUN apt-get install -y --no-install-recommends apache2 openssh-server git gitweb
# Creamos usuario "git" con contraseña "practicas"
RUN useradd --create-home --shell /bin/bash git
RUN echo 'git:practicas' | chpasswd 
# WORKDIR: Cambia el directorio de trabajo
WORKDIR /home/git
# ADD: Copia del directorio actual (host) al directorio destino (contenedor)
ADD 000-default.conf /etc/apache2/sites-available
ADD start.sh /home/git
ADD lab6 /home/git/lab6
# EXPOSE: Permite que el puerto 80 esté accesible desde el exterior del contenedor
EXPOSE 80 22 9418
# CMD: Ejecuta "start.sh" cuando arranca el contenedor
CMD ["/bin/bash", "/home/git/start.sh"]
