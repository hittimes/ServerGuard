#!/bin/bash
iptables -P INPUT ACCEPT
iptables -D INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
#iptables -D INPUT -s 白名单IP/CIDR -j ACCEPT
iptables -D INPUT -p udp -m udp --dport 53 -j ACCEPT

/etc/init.d/knockd stop
