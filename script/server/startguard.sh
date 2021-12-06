#!/bin/bash
iptables -P INPUT DROP
iptables -I INPUT 1 -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
#iptables -I INPUT 2 -s 白名单IP/CIDR -j ACCEPT
iptables -A INPUT -p udp -m udp --dport 53 -j ACCEPT

/etc/init.d/knockd restart

