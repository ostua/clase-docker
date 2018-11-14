# FROM: Usa como base el entorno de python oficial, versión 2.7-slim
FROM python:2.7-slim
# WORKDIR: Cambia el directorio de trabajo a /app
WORKDIR /app
# ADD: Copia el directorio actual (host) en /app (del contenedor)
ADD . /app
# RUN: Instala las librerías necesarias dep python, según indica "requirements.txt"
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# EXPORE: Permite que el puerto 80 esté accesible desde el exterior del contenedor
EXPOSE 80
# ENV: Define una variable de entorno
ENV NAME World
# CMD: Ejecuta "app.py" cuando arranca el contenedor
CMD ["python", "app.py"]
