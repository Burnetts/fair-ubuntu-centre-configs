#!/bin/sh

chmod +x /etc/init.d/internet_masquerade
update-rc.d internet_masquerade defaults
/etc/init.d/internet_masquerade start
