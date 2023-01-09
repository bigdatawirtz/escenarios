# host-mariadb-employees
Un host ubuntu con mariadb e a base de datos employees
## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: mariadb-employees
* **hostname**: mariadb-employees
* **rede**: rede privada ip: 192.168.33.20


## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Acceder a mariadb
Podes conectarte á máquina e despois ao servidor de bases de datos con `sudo mariadb`.

Tamén podes conectarte remotamente con un cliente mariadb/mysql de consola ou ben utilizando outros conectores: `mariadb -h192.168.33.20`

## Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.20
