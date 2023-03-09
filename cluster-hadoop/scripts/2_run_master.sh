#!/usr/bin/env bash

## Format namenode
sudo -u hadoop hdfs namenode -format 2>/dev/null

# Master: arrancar hdfs
sudo -u hadoop /opt/hadoop/sbin/start-dfs.sh
# Arranca os seguintes servizos:
# Master: NameNode
# Master: SecondaryNameNode
# Workers: DataNode


# Master: crear directorio de hadoop
sudo -u hadoop hdfs dfs -mkdir -p /user/hadoop


# Master: arrancar yarn
sudo -u hadoop /opt/hadoop/sbin/start-yarn.sh
# Arranca os seguintes servizos:
# Master: ResourceManager
# Workers: NodeManager

# Master: arrancar job history server
sudo -u hadoop /opt/hadoop/bin/mapred --daemon start historyserver
