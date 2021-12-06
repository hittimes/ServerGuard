#!/bin/bash

usage()
{
    echo "IP and Port are required as the script parameter！"
    echo "usage:${0} 192.168.0.1 0080"
}

open_port()
{
    knock -v -d 100 -u ${1} 5${2} 59000 58324 53333
}

if [ $# -ne 2 ];
then
    usage
    exit
fi

echo "openning!"
open_port $1 $2
echo "Now you can access the port!"

