#!/usr/bin/env bash

# Command to send to the server to create a pair of RSA keys if they don't exist
[[ ! -f .ssh/id_rsa ]] && ssh-keygen -t rsa -b 2048 -f .ssh/id_rsa -q -N ""
