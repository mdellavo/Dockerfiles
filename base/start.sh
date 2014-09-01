#!/bin/bas

set -x

USER=marc
PASSWORD=`pwgen -1`

useradd -m "${USER}" -p `mkpasswd ${PASSWORD}`
usermod -G sudo "${USER}"
echo "User: ${USER} / Password: ${PASSWORD}"

if [ -x "/local.sh" ];
then
    /local.sh
fi

#mkdir /var/run/sshd
#restart ssh
