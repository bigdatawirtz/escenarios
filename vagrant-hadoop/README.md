

# Intro

Este proxecto levanta un clúster hadoop con tres nodos e Pig


## WebUI
+ http://10.20.30.11:9870  #hdfs webUI
+ http://10.20.30.11:8088  #yarn webUI


### Algúns comandos útiles Vagrant:
+ Levantar o clúster
    ```bash 
    vagrant up
    ```
+ Salvar o estado do clúster
    ```bash 
    vagrant suspend
    ```
+ Recuperar o estado salvado do clúster
    ```bash 
    vagrant resume
    ```

+ Eliminar o escenario
    ```bash 
    vagrant destroy
    ```
+ shutdown vm's
    ```bash 
    vagrant halt
    ```

+ ssh a unha máquina específica
    ```bash 
    vagrant ssh <YOUR-VM-NAME>
    ```
  por exemplo:
  ```bash 
    vagrant ssh hadoop-master
    vagrant ssh hadoop-worker1
    ```

### Comandos útiles de Hadoop (en master ou worker vm's):
Despois de conectarse ás máquinas é recomendable mudar ao usuario hadoop
```bash
sudo su hadoop
```
Sitúate tamén no home do usuario hadoop
```bash
cd
```
Crea en hdfs o directorio default para o teu usuario:
```bash
 hdfs dfs -mkdir -p /user/hadoop

```

