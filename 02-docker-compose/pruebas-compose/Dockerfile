# FROM: Usa como base el entorno de python oficial, versión 2.7-slim
FROM python:2.7-slim
# WORKDIR: Directorio de trabajo en la imagen: /app
WORKDIR /app
# COPY: Copia 2 ficheros locales de la APP en /app (de la imagen)
COPY requirements.txt app.py /app/
# RUN: Ejecuta este comando en el momento de construir la imagen
# Instala las librerías necesarias de python, según indica "requirements.txt"
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# EXPOSE: Declara que la APP estará en el puerto 80 cuando ejecute el contenedor
EXPOSE 80
# ENV: Define una variable de entorno
ENV NAME World
# CMD: Ejecuta "app.py" cuando arraquea el contenedor
CMD ["python", "app.py"]
