# host ubuntu básico con usuarios
Un host ubuntu básico con múltiples contas de usuario e conexión SSH
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: host-basico
* **hostname**: host-basico
* **rede**: rede privada ip: 192.168.33.10
* permite conexión user/pass
* redirección guest(22)<->host(22222)


## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.10
* A máquina é accesible no porto 22222 do host grazas a unha redirección do servizo SSH
