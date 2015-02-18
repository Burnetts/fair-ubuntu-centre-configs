#!/bin/bash

export EXTERNAL=eth0
export INTERNAL=eth1

echo 1 > /proc/sys/net/ipv4/ip_forward
/sbin/iptables -t nat -A POSTROUTING -o $EXTERNAL -j MASQUERADE
/sbin/iptables -A FORWARD -i $EXTERNAL -o eth1 -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A FORWARD -i $INTERNAL -o $EXTERNAL -j ACCEPT

