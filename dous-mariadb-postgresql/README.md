# dous-mariadb-postgresql
Dous hosts ubuntus nunha rede privada con Sistemas Xestores de Bases de Datos Relacionais (SXBDR)
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **rede**: rede privada ip: 192.168.33.0/24
* **2 hosts**
  * **vbname**: mari - 192.168.33.101
  * **vbname**: postgri - 192.168.33.102

## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao guest 'mari' con `vagrant ssh mari` ou ao guest 'postgri' con `vagrant ssh postgri`

## Notas
Créase unha rede privada entre o host e os dous guest, de xeito que todos se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **mari**: 192.168.33.101
* **postgri**: 192.168.33.102
