# practica-sql-universidade

## Vagrant
Un host ubuntu con mariadb e a base de datos universidade
### Características
* **box**: ubuntu/focal64 (20.04 LTS)
* **vbname**: practica-sql
* **hostname**: practica-sql
* **rede**: rede privada ip: 192.168.33.150

### Como empezar
1. Sitúate no directorio onde está o Vagrantfile correspondente
2. Executa `vagrant up`
3. Podes conectarte ao novo host con `vagrant ssh`

### Acceder a mariadb
Podes conectarte á máquina e despois ao servidor de bases de datos con `sudo mariadb`.

Tamén podes conectarte remotamente con un cliente mariadb/mysql de consola ou ben utilizando outros conectores: `mariadb -h192.168.33.150`

No directorio 'sql' podes encontrar propostas de exercicios (consultas) para practicar SQL.

### Notas
Créase unha rede privada entre host e guest, de xeito que ambos os dous se poden comunicar a través dos correspondentes enderezos ip:
* **host**: 192.168.33.1
* **guest**: 192.168.33.150

# Openstack

Utiliza o script 'script_mariadb_universidade.sh' para instalar mariadb e cargar a base de datos nunha nova instancia de OpenStack.

Podes lanzar a instancia desde a consola de OpenStack:
```
openstack server create --user-data script_mariadb_universidade.sh --image baseos-Ubuntu-20.04-v5 --flavor m1.1c1m --key-name id_aTuaClave --network provnet-formacion-vlan-133 --security-group grupo_aberto oTeuNome-mariadb-sql-uni
```

Consulta o ip da nova instancia:
```
openstack server show oTeuNome-mariadb-sql-uni
# ou tamén
openstack server show oTeuNome-mariadb-sql-uni | grep addresses
```

En caso de que non teñas acceso directo á nova instancia abre unha nova consola e crea un túnel SSH entre o teu host e a máquina destino (NON uses esa consola nin a peches mentres o túnel siga aberto):
```
ssh -L porto_local:ip_instancia_remota:porto_remoto usuario_intermedio@host_intermedio
# para o caso de MariaDB o porto a redireccionar é o 3306
ssh -L 3306:ip_instancia_remota:3306 usuario_intermedio@host_intermedio
```
## Conexión desde Python

### Environment e librarías

Podes crear un novo environment para utilizar cos notebooks de conexión a Mariadb:

```
conda create --name sqlrules python=3.8
conda activate sqlrules
conda install -ysqlalchemy=1.4
conda install -y ipython-sql
conda install -y pandas
conda install -y pymysql
conda install -y ipykernel
```
Tamén podes crear o environment directamente imporanto o ficheiro yaml dispoñible no repositorio: environment_SQL.yml

```
conda env create --file environment_SQL.yml
```

### Conexión a MariaDB

Se tes conexión directa co host remoto:
```
%load_ext sql
user = 'user'
password = 'password'
connection_string = f'mysql+pymysql://{user}:{password}@ip_host_remoto:3306/universidade'
%sql $connection_string
```

Se tes que facer un túnel:
```
%load_ext sql
user = 'user'
password = 'password'
connection_string = f'mysql+pymysql://{user}:{password}@localhost:3306/universidade'
%sql $connection_string
```



