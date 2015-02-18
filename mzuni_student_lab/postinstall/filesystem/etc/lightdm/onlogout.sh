#!/bin/bash

echo "" > /tmp/lastuser

if [ "$USER" = "online" ]
then
USER="other" /etc/init.d/networking restart
USER="online"
fi
