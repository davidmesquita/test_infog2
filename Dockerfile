FROM python:3
# Puxando a imagem mais estável


heroku config:set DISABLE_COLLECTSTATIC=1

ENV PYTHONUNBUFFERED=1
# Mostra o output no terminal comandos python executados

RUN apt-get update -qq && apt-get install -y wait-for-it
# Espera subir o database dps os projeto django

WORKDIR /code 
# pasta do projeto

COPY requirements.txt /code 
# arq de referencia das libs

RUN pip install -r requirements.txt 
# instalar dependencias

COPY . /code

