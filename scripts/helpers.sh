#!/bin/bash


ssh-container() {

    if [ -z "${1}" ]
    then
        echo "USAGE: ssh-container [container name]"
        return
    fi

    NAME=$1
    PORT=`docker port ${NAME} 22|cut -d: -f2`

    if [ -z "${PORT}" ]
    then

    fi

    echo "ssh to container ${NAME} on ${PORT}"

}
