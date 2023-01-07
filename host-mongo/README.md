# host-mongo
Un host ubuntu con MondoDB


## Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: host-mongo
* **hostname**: host-mongo
* **rede**: rede privada ip: 192.168.33.100


## Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

## Acceso a Mongo
A forma máis común de acceder a MongoDB é co cliente de consola mongosh. O cliente mongosh instálase de xeito predeterminado cando se instala o servidor, mais tamén é posible instalalo por separado, en equipos nos que non se instala o servidor.

MongoDB corre no porto default: 27017

Neste escenario configúrase a instancia de MongoDB para que permita conexións a través da rede, e non só desde localhost. Conéctate co seguinte comando, segundo o caso:

`mongosh`

ou

`mongosh --host 192.168.33.100`

## Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.100
