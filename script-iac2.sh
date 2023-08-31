#!/bin/bash

echo "Criação de um servidor apache"

# Atualizando o sistema
apt-get update
apt-get upgrade -y

# Baixando o apache2 pra criar um servidor  web
apt-get install apache2 -y

# Baixando unzip pra descompactar o arquivo
apt-get install unzip -y

# Criando um diretorio
mkdir download01

# Acessando o diretorio
cd /download01

# Baixando aplicação no diretorio download01
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo zip
unzip main.zip

# Entrando no diretorio descompactado
cd linux-site-dio-main

#Copinado os arquivo do diretorio Linux-site-dio-main  para pasta padrao do apache

cp -R * /var/www/html/


echo "Concluido"




