# docker-host
Un host ubuntu con docker

## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: docker-host
* **hostname**: docker-host
* **rede**: rede privada ip: 192.168.33.10
* Instalación de docker

## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Notas
Podes utilizar este host para lanzar dockers e acceder aos servizos sen redireccións, a través do enderezo de rede privada 192.168.33.10

Por exemplo:
`docker run hello-world`

