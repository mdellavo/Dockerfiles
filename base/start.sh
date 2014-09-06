#!/bin/bash

set -x

USER=marc
PASSWORD=`pwgen -1`

useradd -m "${USER}" -s /bin/bash -p `mkpasswd ${PASSWORD}`
usermod -G sudo "${USER}"
echo "User: ${USER} / Password: ${PASSWORD}"

echo "Run parts"
ls /start.d/
run-parts -v /start.d/

echo "Starting ssh..."
mkdir /var/run/sshd

/usr/sbin/sshd -D
