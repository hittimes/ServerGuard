#!/bin/bash

SERVER_IP=192.168.0.1
./open.sh $SERVER_IP 0022
ssh -i ~/.ssh/press-singapore.pem ubuntu@$SERVER_IP

