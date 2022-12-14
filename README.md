# escenarios
Escenarios para realizar exercicios de big data

## Como empezar
Neste respositorio encontrarás diferentes Vagrantfiles para lanzar facilmente diferentes escenarios sobre os que realizar exercicios de Big Data.

Os escenarios están deseñados para lanzarse desde un contorno no que estean instalados Vagrant e Virtualbox. Tamén necesitarás unha boa conexión a internet para descargar as boxes (imaxes vagrant) e os diferentes softwares a instalar.

Para preparar o teu equipo:
1. Instala Virtualbox
2. Instala Vagrant
3. Instala git
4. Clona este repositorio
5. Sitúate no directorio co escenario que precisas e lanza `vagrant init`

## Listaxe de escenarios
* **host-basico**; un escenario simple con un host ubuntu
* **docker-host**; un escenario simple con un host ubuntu e docker
* **dous-hosts**; un escenario con dous equipos ubuntu: main e worker
* **docker-nginx**; un escenario con un host ubuntu, docker e un contedor nginx que server o directorio local www
* **dous-mariadb-postgresql**; un escenario con dous equipos ubuntu: un con mariadb e outro con postgresql
