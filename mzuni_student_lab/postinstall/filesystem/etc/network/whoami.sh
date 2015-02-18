#!/bin/bash
if users|grep -q online
then
	echo "ONLINE"
else
	if [ "$USER" = "online" ]
	then
		echo "ONLINE"
	else
		echo "OFFLINE"
	fi
fi
