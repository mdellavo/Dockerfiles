#!/bin/bash

/etc/init.d/xdm restart

# Start the ssh service
mkdir /var/run/sshd
/usr/sbin/sshd -D
