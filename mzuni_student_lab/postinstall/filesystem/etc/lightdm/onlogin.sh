#!/bin/bash

echo $USER > /tmp/lastuser

if [ "$USER" = "online" ]
then
	# This only worked in 12.04 then all the fun
	# of restarting all network interfaces went
	# away :(
	# /etc/init.d/networking restart
	ifdown eth0
	ifup eth0
fi
