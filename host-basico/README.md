# docker-host
Un host ubuntu básico
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: host-basico
* **hostname**: host-basico
* **rede**: rede privada ip: 192.168.33.10


## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.10
