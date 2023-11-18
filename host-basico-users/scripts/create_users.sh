#!/usr/bin/env bash

for i in `cat /vagrant/scripts/userlist.txt`; do useradd -m -d /home/$i -s /bin/bash $i; done

for i in `cat /vagrant/scripts/userlist.txt`; do chpasswd <<< "$i:$i"; done