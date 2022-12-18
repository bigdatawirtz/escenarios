# docker-host
Un host ubuntu con Ngix, servindo unha web a través da carpeta compartida: www

O host está pensado para exercicios nos que se procesen os logs de visitas a unha páxina web. Pode utilizarse, por exemplo, para unha práctica con Flume.
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: host-flume
* **hostname**: host-flume
* **rede**: rede privada ip: 192.168.33.100


## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Acceso a Nginx
Unha vez lanzada a máquina podes acceder ao servidor web co teu navegador en http://192.168.33.100

Podes visualiar os **logs** de navegación en /var/log/nginx/access.log
```
tail -f /var/log/nginx/access.log
```
## Flume
Utiliza o comando flume-ng para executar Flume


## Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.100
