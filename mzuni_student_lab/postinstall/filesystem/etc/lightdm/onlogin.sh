#!/bin/bash

echo $USER > /tmp/lastuser

if [ "$USER" = "online" ]
then
	/etc/init.d/networking restart
fi
