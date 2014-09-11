#!/bin/bash

set -x

USER=marc
PASSWORD=`pwgen -1`

useradd -ms /bin/bash -G sudo -p `mkpasswd ${PASSWORD}` "${USER}"

echo "User: ${USER} / Password: ${PASSWORD}"

echo "Run parts"
run-parts -v /start.d/

echo "Starting Tmux"
sudo -u marc -H bash -c "tmux new -d"

echo "Starting ssh..."
mkdir /var/run/sshd

/usr/sbin/sshd -D
