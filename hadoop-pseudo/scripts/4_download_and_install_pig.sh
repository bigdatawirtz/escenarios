#!/usr/bin/env bash

## Download and extract pig just if not exists
if [ ! -d /vagrant/share_files/cache/pig-0.17.0/ ]; then
    wget -P /vagrant/share_files/cache/ wget https://dlcdn.apache.org/pig/pig-0.17.0/pig-0.17.0.tar.gz
    tar -xzvf /vagrant/share_files/cache/pig-0.17.0.tar.gz -C /vagrant/share_files/cache/
fi

## Copy pig directory to opt
sudo cp -R /vagrant/share_files/cache/pig-0.17.0 /opt/pig
sudo chown hadoop:hadoop -R /opt/pig

# set path's of pig
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/hadoop/bin:/opt/pig/bin
echo  'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/hadoop/bin:/opt/pig/bin"' |sudo tee -a /etc/environment
echo  "PIG_HOME=/opt/pig" |sudo tee -a /etc/environment
echo  "PIG_CLASSPATH=/opt/hadoop/etc" |sudo tee -a /etc/environment
source /etc/environment


