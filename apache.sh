#!/bin/bash

echo "Atualizando o servidor"
apt-get update 
apt-get upgrade -y
apt-get install apache2 unzip -y
cd scripts/tpm
echo "Baixando..." 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
