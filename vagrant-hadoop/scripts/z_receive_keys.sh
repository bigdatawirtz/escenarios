#!/usr/bin/env bash

# While ! exists file $HOME/id_rsa.pub
# If exists, check content against $HOME/.ssh/authorized_keys -> If key not present, then it's added

KEY_FILE="id_rsa.pub"
keeponexe=1

mkdir -p ${HOME}/.ssh
chmod 700 ${HOME}/.ssh
touch ${HOME}/.ssh/authorized_keys

while [ ${keeponexe} -eq 1 ]
do
    if [[ ! -f ${HOME}/${KEY_FILE} ]]
    then
        # echo "Waiting for file..."
        sleep 1
    else
        # echo "File found"
        auxfilecontent=$(cat ${HOME}/${KEY_FILE})
        auxoutput=`cat ${HOME}/.ssh/authorized_keys | grep "${auxfilecontent}" | wc -l`
        #Add only if the key does not exist
        if [[ ${auxoutput} -eq 0 ]]
        then
            #Añadir
            cat ${HOME}/${KEY_FILE} >> ${HOME}/.ssh/authorized_keys
        fi
        keeponexe=0
    fi
done
