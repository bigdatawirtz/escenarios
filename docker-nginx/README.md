# docker-nginx
Un host ubuntu con docker e servidor Nginx

## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: docker-nginx
* **hostname**: docker-nginx
* **rede**: rede privada ip: 192.168.33.10
* Instalación de docker
* Instalación de contedor Nginx
* Sirve a web do directorio www

## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Notas
Hai unha páxina web index.html no directorio www. Este directorio móntase na máquina virtual como /vagrant_data. A continuación, dentro da máquina virtual, móntase o directorio /vagrant_data no contedor de Nginx, sobre o directorio /usr/share/nginx/html, de maneira que o contedor ngingx serve a web de www.