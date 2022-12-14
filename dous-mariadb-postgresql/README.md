# dous-hosts
Dous hosts ubuntus nunha rede privada.
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **rede**: rede privada ip: 192.168.33.0/24
* **2 hosts**
  * **vbname**: main - 192.168.33.11
  * **vbname**: worker - 192.168.33.12

## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao guest 'main' con `vagrant ssh main` ou ao guest 'worker' con `vagrant ssh worker`

## Notas
Créase unha rede privada entre o host e os dous guest, de xeito que todos se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **main**: 192.168.33.11
* **main**: 192.168.33.12
