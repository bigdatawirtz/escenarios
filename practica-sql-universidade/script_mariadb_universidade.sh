#!/bin/bash

# instalación de servidor de bases de datos
apt-get update
apt-get install -y mariadb-server

# configuracion
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf     
sudo mariadb -e "GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' IDENTIFIED BY 'password';"
systemctl restart mariadb.service

# carga de base de datos
cd /home/cesgaxuser
wget https://github.com/bigdatawirtz/escenarios/raw/main/practica-sql-universidade/data/creacion_base_de_datos.sql
wget https://github.com/bigdatawirtz/escenarios/raw/main/practica-sql-universidade/data/carga_de_datos_universidade.sql
mariadb < creacion_base_de_datos.sql
mariadb < carga_de_datos_universidade.sql

systemctl restart mariadb.service


