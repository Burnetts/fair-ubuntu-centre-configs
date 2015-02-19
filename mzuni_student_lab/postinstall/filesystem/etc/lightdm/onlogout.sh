#!/bin/bash

echo "" > /tmp/lastuser

if [ "$USER" = "online" ]
then
# This only worked in 12.04 and now in 14.04 restarting
# the network service has become illegal
# USER="other" /etc/init.d/networking restart
ifdown eth0
ifup eth0
USER="online"
fi
