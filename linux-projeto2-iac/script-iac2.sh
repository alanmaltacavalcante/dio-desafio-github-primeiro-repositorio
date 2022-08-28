#!/bin/bash

echo "Provisionando um servidor web"

echo "Atualizando servidor"

apt-get update
apt-get upgrade -y
echo "Servidor atualizado"

echo "Instalando servidor web"

apt-get install apache2 -y
echo "Servidor web instalado"

echo "Instalando unzip"

apt-get install unzip -y
echo "Unzip instalado"

echo "Baixando e copiando arquivos do site para o diretório do apache"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Site instalado"

echo "Fim do script"
